.class public abstract Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAboutGridBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAboutGridBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;",
        "aboutPageItem",
        "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;",
        "getAboutPageItem",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;",
        "setAboutPageItem",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;)V",
        "Lkotlin/Function1;",
        "listener",
        "Lx9/l;",
        "getListener",
        "()Lx9/l;",
        "setListener",
        "(Lx9/l;)V",
        "<init>",
        "()V",
        "ui-dashboard_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public aboutPageItem:Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

.field public listener:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhe/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;->bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;->getListener()Lx9/l;

    move-result-object p1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;->getAboutPageItem()Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    move-result-object p0

    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAboutGridBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAboutGridBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAboutGridBinding;)V
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;->getAboutPageItem()Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAboutGridBinding;->d:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAboutGridBinding;->c:Landroid/widget/ImageView;

    .line 20
    .line 21
    const-string v1, "dashboardItemLogo"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;->getAboutPageItem()Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->getIconName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v3, 0x1a

    .line 37
    .line 38
    if-eq v2, v3, :cond_0

    .line 39
    .line 40
    const/16 v3, 0x1b

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    :cond_0
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Lx5/a;->l(Landroid/content/Context;)Le/f;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v3, Lp/g$a;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-direct {v3, v4}, Lp/g$a;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, v3, Lp/g$a;->c:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Lp/g$a;->e(Landroid/widget/ImageView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Lp/g$a;->b()V

    .line 72
    .line 73
    .line 74
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    iput-object v0, v3, Lp/g$a;->r:Ljava/lang/Boolean;

    .line 77
    .line 78
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 79
    .line 80
    iput-object v0, v3, Lp/g$a;->h:Landroid/graphics/Bitmap$Config;

    .line 81
    .line 82
    const v0, 0x7f0800c9

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v0}, Lp/g$a;->d(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Lp/g$a;->c(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lp/g$a;->a()Lp/g;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v2, v0}, Le/f;->a(Lp/g;)Lp/c;

    .line 96
    .line 97
    .line 98
    new-instance v0, Lie/d;

    .line 99
    .line 100
    const/4 v1, 0x3

    .line 101
    invoke-direct {v0, v1, p0}, Lie/d;-><init>(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAboutGridBinding;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final getAboutPageItem()Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;->aboutPageItem:Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "aboutPageItem"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d0087

    return v0
.end method

.method public final getListener()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;->listener:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "listener"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setAboutPageItem(Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;->aboutPageItem:Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    return-void
.end method

.method public final setListener(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;->listener:Lx9/l;

    return-void
.end method
