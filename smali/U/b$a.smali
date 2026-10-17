.class public final LU/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LU/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:J

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LU/b$a;->j:J

    iput-object p3, p0, LU/b$a;->b:Ljava/lang/String;

    iput-object p1, p0, LU/b$a;->c:Ljava/lang/String;

    iput-object p2, p0, LU/b$a;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/res/AssetFileDescriptor;
    .locals 8

    iget v0, p0, LU/b$a;->e:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, LU/b$a;->a:Ljava/io/File;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0}, LU/b$a;->b()J

    move-result-wide v4

    iget-wide v6, p0, LU/b$a;->i:J

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, LU/b$a;->j:J

    return-wide v0
.end method

.method public c(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V
    .locals 4

    iget-wide v0, p0, LU/b$a;->d:J

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    const v2, 0x4034b50

    if-ne p1, v2, :cond_0

    const/16 p1, 0x1a

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    const v2, 0xffff

    and-int/2addr p1, v2

    const/16 v3, 0x1c

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p2

    and-int/2addr p2, v2

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, LU/b$a;->j:J

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "zipro"

    const-string p2, "didn\'t find signature at start of lfh"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
