.class public Lcom/ricktop/ClockSkinCoco/M;
.super Landroid/appwidget/AppWidgetHostView;
.source "M.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 18
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 24
    return-void
.end method
