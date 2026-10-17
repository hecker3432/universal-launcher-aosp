.class public La0/x;
.super Ljava/nio/charset/CharacterCodingException;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    iput-object p1, p0, La0/x;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La0/x;->a:Ljava/lang/String;

    return-object v0
.end method
