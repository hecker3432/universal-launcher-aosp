.class public Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;
.super Landroidx/fragment/app/t;
.source "WidgetPagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetPagerAdapter"


# instance fields
.field private final containerId:I

.field private final fragmentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final fragmentManager:Landroidx/fragment/app/m;

.field private widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ailife/launcher/widget/model/WidgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/m;)V
    .registers 3

    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/m;I)V

    .line 37
    iput-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->fragmentManager:Landroidx/fragment/app/m;

    .line 38
    const/4 p1, -0x1

    iput p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->containerId:I

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->fragmentCache:Ljava/util/Map;

    .line 41
    return-void
.end method

.method private getFragmentForPosition(I)Landroidx/fragment/app/Fragment;
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->fragmentCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 68
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->fragmentCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    .line 72
    :cond_19
    invoke-direct {p0, p1}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->getFragmentTag(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->fragmentManager:Landroidx/fragment/app/m;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/m;->X(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_26

    .line 75
    return-object v0

    .line 79
    :cond_26
    if-nez p1, :cond_2d

    .line 80
    invoke-static {}, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;->newInstance()Lcom/ailife/launcher/widget/ui/AddWidgetFragment;

    move-result-object p1

    return-object p1

    .line 82
    :cond_2d
    add-int/lit8 p1, p1, -0x1

    .line 83
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_48

    .line 84
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ailife/launcher/widget/model/WidgetInfo;

    .line 85
    invoke-virtual {p1}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result p1

    invoke-static {p1}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->newInstance(I)Lcom/ailife/launcher/widget/ui/WidgetPageFragment;

    move-result-object p1

    return-object p1

    .line 90
    :cond_48
    invoke-static {}, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;->newInstance()Lcom/ailife/launcher/widget/ui/AddWidgetFragment;

    move-result-object p1

    return-object p1
.end method

.method private getFragmentTag(I)Ljava/lang/String;
    .registers 4

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget_page_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d()I
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getAddWidgetFragment()Lcom/ailife/launcher/widget/ui/AddWidgetFragment;
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->fragmentCache:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 147
    instance-of v2, v0, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;

    if-eqz v2, :cond_14

    .line 148
    check-cast v0, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;

    return-object v0

    .line 152
    :cond_14
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->fragmentManager:Landroidx/fragment/app/m;

    invoke-direct {p0, v1}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->getFragmentTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->X(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 153
    instance-of v1, v0, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;

    if-eqz v1, :cond_25

    .line 154
    check-cast v0, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;

    return-object v0

    .line 157
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidgetPageFragment(I)Lcom/ailife/launcher/widget/ui/WidgetPageFragment;
    .registers 5

    .line 164
    invoke-virtual {p0, p1}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->getWidgetPosition(I)I

    move-result p1

    .line 165
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    .line 166
    return-object v1

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->fragmentCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 170
    instance-of v2, v0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;

    if-eqz v2, :cond_1c

    .line 171
    check-cast v0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;

    return-object v0

    .line 175
    :cond_1c
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->fragmentManager:Landroidx/fragment/app/m;

    invoke-direct {p0, p1}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/m;->X(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 176
    instance-of v0, p1, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;

    if-eqz v0, :cond_2d

    .line 177
    check-cast p1, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;

    return-object p1

    .line 180
    :cond_2d
    return-object v1
.end method

.method public getWidgetPosition(I)I
    .registers 4

    .line 188
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 189
    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ailife/launcher/widget/model/WidgetInfo;

    invoke-virtual {v1}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v1

    if-ne v1, p1, :cond_1a

    .line 190
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 188
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_1d
    const/4 p1, -0x1

    return p1
.end method

.method public getWidgets()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ailife/launcher/widget/model/WidgetInfo;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public notifyWidgetAdded(Lcom/ailife/launcher/widget/model/WidgetInfo;)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->i()V

    .line 127
    return-void
.end method

.method public notifyWidgetRemoved(I)V
    .registers 4

    .line 133
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 134
    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ailife/launcher/widget/model/WidgetInfo;

    invoke-virtual {v1}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v1

    if-ne v1, p1, :cond_20

    .line 135
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->i()V

    .line 137
    return-void

    .line 133
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_23
    return-void
.end method

.method public s(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 46
    if-nez p1, :cond_7

    .line 47
    invoke-static {}, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;->newInstance()Lcom/ailife/launcher/widget/ui/AddWidgetFragment;

    move-result-object p1

    return-object p1

    .line 49
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 50
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_22

    .line 51
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ailife/launcher/widget/model/WidgetInfo;

    .line 52
    invoke-virtual {p1}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result p1

    invoke-static {p1}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->newInstance(I)Lcom/ailife/launcher/widget/ui/WidgetPageFragment;

    move-result-object p1

    return-object p1

    .line 56
    :cond_22
    invoke-static {}, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;->newInstance()Lcom/ailife/launcher/widget/ui/AddWidgetFragment;

    move-result-object p1

    return-object p1
.end method

.method public setWidgets(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ailife/launcher/widget/model/WidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->setWidgets(Ljava/util/List;Z)V

    .line 102
    return-void
.end method

.method public setWidgets(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ailife/launcher/widget/model/WidgetInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->widgets:Ljava/util/List;

    .line 109
    if-eqz p2, :cond_c

    .line 110
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->i()V

    .line 112
    :cond_c
    return-void
.end method
