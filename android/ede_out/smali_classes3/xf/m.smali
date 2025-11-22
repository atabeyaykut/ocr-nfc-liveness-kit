.class public final Lxf/m;
.super Lcom/airbnb/epoxy/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 4

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-object v0
.end method
