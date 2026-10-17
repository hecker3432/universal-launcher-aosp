.class Lv0/g;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private b:Z

.field private c:[B


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lv0/g;->a:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 1

    iget-object v0, p0, Lv0/g;->c:[B

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lv0/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv0/g;->b:Z

    iget-object v0, p0, Lv0/g;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lv0/g;->c:[B

    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-boolean v0, p0, Lv0/g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lv0/g;->a:Ljava/security/MessageDigest;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream has been already closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 1

    iget-boolean v0, p0, Lv0/g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lv0/g;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream has been already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
