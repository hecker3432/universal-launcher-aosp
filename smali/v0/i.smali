.class final Lv0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv0/i$b;,
        Lv0/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field private static final b:Ljava/nio/charset/Charset;

.field private static final c:Ljava/security/SecureRandom;

.field private static final d:[B

.field private static final e:Lv0/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "UnicodeLittleUnmarked"

    invoke-static {v0}, LH0/e;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lv0/i;->a:Ljava/nio/charset/Charset;

    sget-object v0, La0/c;->b:Ljava/nio/charset/Charset;

    sput-object v0, Lv0/i;->b:Ljava/nio/charset/Charset;

    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lv0/i;->c:Ljava/security/SecureRandom;

    const-string v0, "NTLMSSP"

    sget-object v1, La0/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    sput-object v1, Lv0/i;->d:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    aput-byte v3, v1, v0

    new-instance v0, Lv0/i$b;

    invoke-direct {v0}, Lv0/i$b;-><init>()V

    sput-object v0, Lv0/i;->e:Lv0/i$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
