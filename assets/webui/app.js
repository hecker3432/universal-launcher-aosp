// ClockSkinTransfer UI - Folder Management and Watch Face Operations

// Modal Management
function showModal(modalId) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.classList.add('active');
    }
}

function hideModal(modalId) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.classList.remove('active');
    }
}

// Close modal when clicking outside
window.onclick = function(event) {
    if (event.target.classList.contains('modal')) {
        event.target.classList.remove('active');
    }
}

function updateFileText() {
    var x = document.getElementById("file");
    var txt = "";
    if ('files' in x) {
        if (x.files.length == 0) {
            txt = "";
        } else {
            txt += "<ul>";
            for (var i = 0; i < x.files.length; i++) {
                var file = x.files[i];
                if ('name' in file) {
                    txt += "<li><strong>" + file.name + "</strong>";
                    if ('size' in file) {
                        txt += " (" + file.size + " bytes)";
                    }
                    txt += "</li>";
                }
            }
            txt += "</ul>";
        }
    }
    document.getElementById("fileText").innerHTML = txt;
}

function handleUploadSubmit(event) {
    event.preventDefault();

    const form = document.getElementById('uploadForm');
    const formData = new FormData(form);

    fetch('/upload', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        alert('Files uploaded successfully!');
        form.reset();
        updateFileText();
        loadWatchFaces();
    })
    .catch(error => {
        alert('Error uploading files: ' + error);
    });
}


// Folder Operations
function showCreateFolderDialog() {
    showModal('createFolderModal');
}

function createFolder() {
    const folderName = document.getElementById('newFolderName').value.trim();
    if (!folderName) {
        alert('Please enter a folder name');
        return;
    }

    const formData = new FormData();
    formData.append('name', folderName);

    fetch('/folder/create', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        hideModal('createFolderModal');
        location.reload();
    })
    .catch(error => {
        alert('Error creating folder: ' + error);
    });
}

function showRenameFolderDialog() {
    loadFolders('folderToRename');
    showModal('renameFolderModal');
}

function showDeleteFolderDialog() {
    loadFolders('folderToDelete');
    showModal('deleteFolderModal');
}

function showMoveWatchFaceDialog(filename) {
    document.getElementById('watchFaceToMove').value = filename;
    loadFolders('targetFolder');
    showModal('moveWatchFaceModal');
}

function loadFolders(selectId) {
    const select = document.getElementById(selectId);
    if (!select) return;

    fetch('/folder/list')
        .then(response => response.json())
        .then(folders => {
            // Clear existing options
            select.innerHTML = '';

            // Add default option
            if (selectId === 'targetFolder') {
                const defaultOpt = document.createElement('option');
                defaultOpt.value = '';
                defaultOpt.textContent = 'Root (No folder)';
                select.appendChild(defaultOpt);
            } else {
                const defaultOpt = document.createElement('option');
                defaultOpt.value = '';
                defaultOpt.textContent = 'Select...';
                select.appendChild(defaultOpt);
            }

            // Add folder options
            folders.forEach(folder => {
                const option = document.createElement('option');
                option.value = folder;
                option.textContent = folder;
                select.appendChild(option);
            });
        })
        .catch(error => {
            console.error('Error loading folders:', error);
            alert('Error loading folders: ' + error);
        });
}

function renameFolder() {
    const oldName = document.getElementById('folderToRename').value;
    const newName = document.getElementById('newFolderNameRename').value.trim();

    if (!oldName || !newName) {
        alert('Please select a folder and enter a new name');
        return;
    }

    const formData = new FormData();
    formData.append('oldname', oldName);
    formData.append('newname', newName);

    fetch('/folder/rename', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        hideModal('renameFolderModal');
        location.reload();
    })
    .catch(error => {
        alert('Error renaming folder: ' + error);
    });
}

function deleteFolder() {
    const folderName = document.getElementById('folderToDelete').value;

    if (!folderName) {
        alert('Please select a folder');
        return;
    }

    if (!confirm('Are you sure you want to delete folder "' + folderName + '"? This action cannot be undone.')) {
        return;
    }

    const formData = new FormData();
    formData.append('name', folderName);

    fetch('/folder/delete', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        hideModal('deleteFolderModal');
        location.reload();
    })
    .catch(error => {
        alert('Error deleting folder: ' + error);
    });
}

// Watch Face Operations
function showRenameWatchFaceDialog(filename) {
    document.getElementById('watchFaceToRename').value = filename;
    const justTheName = filename.substring(filename.lastIndexOf('/') + 1);
    document.getElementById('newWatchFaceName').value = justTheName;
    showModal('renameWatchFaceModal');
}

function renameWatchFace() {
    const filename = document.getElementById('watchFaceToRename').value;
    const newName = document.getElementById('newWatchFaceName').value.trim();

    if (!filename || !newName) {
        alert('Please enter a new name');
        return;
    }

    if (newName.includes('/')) {
        alert('New name cannot contain slashes.');
        return;
    }

    const formData = new FormData();
    const encodedFile = filename.split('/').map(encodeURIComponent).join('/');
    formData.append('file', encodedFile);
    formData.append('newname', encodeURIComponent(newName));

    fetch('/watchface/rename', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        hideModal('renameWatchFaceModal');
        location.reload();
    })
    .catch(error => {
        alert('Error renaming watch face: ' + error);
    });
}

function moveWatchFace() {
    const filename = document.getElementById('watchFaceToMove').value;
    const folder = document.getElementById('targetFolder').value;

    if (!filename) {
        alert('No watch face selected');
        return;
    }

    const formData = new FormData();
    const encodedFile = filename.split('/').map(encodeURIComponent).join('/');
    formData.append('file', encodedFile);
    formData.append('folder', encodeURIComponent(folder));

    fetch('/watchface/move', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        hideModal('moveWatchFaceModal');
        location.reload();
    })
    .catch(error => {
        alert('Error moving watch face: ' + error);
    });
}

function deleteWatchFace(filename) {
    if (!confirm('Are you sure you want to delete "' + filename + '"?')) {
        return;
    }

    const formData = new FormData();
    const encodedFile = filename.split('/').map(encodeURIComponent).join('/');
    formData.append('file', encodedFile);

    fetch('/watchface/delete', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        location.reload();
    })
    .catch(error => {
        alert('Error deleting watch face: ' + error);
    });
}

// Watch Face Activation
function activateWatchFace(filename) {
    const encodedName = filename.split(/[/\\]/).map(encodeURIComponent).join('/');

    fetch('/select?name=' + encodedName)
        .then(response => response.text())
        .then(data => {
            alert('Watch face activated successfully!');
            location.reload();
        })
        .catch(error => {
            alert('Error activating watch face: ' + error);
        });
}

// Watch Face Detail Dialog
function showWatchFaceDetail(fullPath, displayName) {
    const encodedName = fullPath.split(/[/\\]/).map(encodeURIComponent).join('/');

    document.getElementById('watchFaceDetailPath').value = fullPath;
    document.getElementById('watchFaceDetailTitle').textContent = displayName;
    document.getElementById('watchFaceDetailImage').src = '/image?name=' + encodedName;

    showModal('watchFaceDetailModal');
}

function activateWatchFaceFromDetail() {
    const fullPath = document.getElementById('watchFaceDetailPath').value;
    const encodedName = fullPath.split(/[/\\]/).map(encodeURIComponent).join('/');

    fetch('/select?name=' + encodedName)
        .then(response => response.text())
        .then(data => {
            hideModal('watchFaceDetailModal');
            alert('Watch face activated successfully!');
            location.reload();
        })
        .catch(error => {
            alert('Error activating watch face: ' + error);
        });
}

function renameWatchFaceFromDetail() {
    const fullPath = document.getElementById('watchFaceDetailPath').value;
    hideModal('watchFaceDetailModal');
    showRenameWatchFaceDialog(fullPath);
}

function moveWatchFaceFromDetail() {
    const fullPath = document.getElementById('watchFaceDetailPath').value;
    hideModal('watchFaceDetailModal');
    showMoveWatchFaceDialog(fullPath);
}

function downloadWatchFaceFromDetail() {
    const fullPath = document.getElementById('watchFaceDetailPath').value;
    const encodedName = fullPath.split(/[/\\]/).map(encodeURIComponent).join('/');

    window.location.href = '/download?name=' + encodedName;
}

function deleteWatchFaceFromDetail() {
    const fullPath = document.getElementById('watchFaceDetailPath').value;
    hideModal('watchFaceDetailModal');
    deleteWatchFace(fullPath);
}

function loadWatchFaces() {
    const container = document.getElementById('watchlist-container');
    if (!container) return;

    fetch('/watchlist')
        .then(response => response.text())
        .then(str => new DOMParser().parseFromString(str, "text/xml"))
        .then(data => {
            const watchfaces = data.getElementsByTagName('name');
            const groupedFaces = {};

            for (let i = 0; i < watchfaces.length; i++) {
                const fullPath = watchfaces[i].childNodes[0].nodeValue;

                // Decode the URL-encoded path first
                let decodedPath;
                try {
                    decodedPath = decodeURIComponent(fullPath);
                } catch (e) {
                    decodedPath = fullPath;
                }

                const parts = decodedPath.replace(/\\/g, '/').split('/');
                let folder = '_root';

                if (parts.length > 1) {
                    folder = parts.slice(0, -1).join('/');
                }

                if (!groupedFaces[folder]) {
                    groupedFaces[folder] = [];
                }
                groupedFaces[folder].push(fullPath);
            }

            let html = '';
            const folderOrder = Object.keys(groupedFaces).sort((a, b) => {
                if (a === '_root') return -1;
                if (b === '_root') return 1;
                return a.localeCompare(b);
            });

            for (const folder of folderOrder) {
                const folderName = (folder === '_root') ? 'Root' : folder;
                html += `<h2 class="folder-banner">${folderName}</h2>`;
                
                const facesInFolder = groupedFaces[folder];
                facesInFolder.sort((a,b) => a.localeCompare(b));

                html += '<div class="folder-content">';

                for (const watchfaceName of facesInFolder) {
                    let rawWatchfaceName = watchfaceName;
                    try {
                        rawWatchfaceName = decodeURIComponent(watchfaceName);
                    } catch (e) {
                        rawWatchfaceName = watchfaceName;
                    }
                    
                    const encodedName = rawWatchfaceName.split(/[/\\]/).map(encodeURIComponent).join('/');
                    const escapedName = rawWatchfaceName.replace(/'/g, "\\'");
                    
                    let lastSlash = rawWatchfaceName.lastIndexOf('/');
                    if (lastSlash === -1) {
                        lastSlash = rawWatchfaceName.lastIndexOf('\\');
                    }
                    const displayName = rawWatchfaceName.substring(lastSlash + 1);

                    html += `
                        <div class="watch_card">
                            <div class="watch_card_title"><span onclick="showWatchFaceDetail('${escapedName}', '${displayName}')" style="cursor: pointer; color: #2196F3;">${displayName}</span></div>
                            <div class="watch_card_spacer"></div>
                            <div class="watch_card_thumbnail" onclick="showWatchFaceDetail('${escapedName}', '${displayName}')" style="cursor: pointer;">
                                <img width="100%" height="100%" src="/image?name=${encodedName}">
                            </div>
                            <div class="watch_card_spacer"></div>
                            <div class="watch_card_button_row">
                                <span onclick="activateWatchFace('${escapedName}')" class="watch_card_button_element_green">ACTIVATE</span>
                                <span onclick="deleteWatchFace('${escapedName}')" class="watch_card_button_element_red">DELETE</span>
                            </div>
                        </div>
                    `;
                }
                html += '</div>';
            }
            container.innerHTML = html;
        })
        .catch(error => {
            console.error('Error loading watch faces:', error);
            container.innerHTML = '<p>Error loading watch faces.</p>';
        });
}


// Initialize on page load
document.addEventListener('DOMContentLoaded', function() {
    loadWatchFaces();

    // Set up modal close buttons
    const closeButtons = document.querySelectorAll('.modal-close');
    closeButtons.forEach(button => {
        button.onclick = function() {
            const modal = this.closest('.modal');
            if (modal) {
                modal.classList.remove('active');
            }
        };
    });
});