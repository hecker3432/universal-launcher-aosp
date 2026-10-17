.class LQ/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ/a;->Q1(Landroidx/appcompat/app/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:LQ/a;


# direct methods
.method constructor <init>(LQ/a;)V
    .locals 0

    iput-object p1, p0, LQ/a$a;->b:LQ/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, LQ/a$a;->b:LQ/a;

    iput p2, v0, LQ/a;->u0:I

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroidx/preference/c;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
