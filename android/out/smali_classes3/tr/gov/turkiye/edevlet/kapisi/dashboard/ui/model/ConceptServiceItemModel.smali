.class public abstract Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemEditorServiceListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemEditorServiceListBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
        "service",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
        "getService",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
        "setService",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;)V",
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
.field public listener:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhe/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->getListener()Lx9/l;

    move-result-object p1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    move-result-object p0

    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemEditorServiceListBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemEditorServiceListBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemEditorServiceListBinding;)V
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->getServiceName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemEditorServiceListBinding;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->getInstitutionName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemEditorServiceListBinding;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemEditorServiceListBinding;->b:Landroid/widget/ImageView;

    .line 33
    .line 34
    const-string v1, "imgServiceInstitutionLogo"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->getIconName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v3, 0x1a

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    if-eq v2, v3, :cond_0

    .line 53
    .line 54
    const/16 v3, 0x1b

    .line 55
    .line 56
    if-ne v2, v3, :cond_1

    .line 57
    .line 58
    :cond_0
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v4, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Lx5/a;->l(Landroid/content/Context;)Le/f;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Lp/g$a;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-direct {v3, v5}, Lp/g$a;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, v3, Lp/g$a;->c:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Lp/g$a;->e(Landroid/widget/ImageView;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lp/g$a;->b()V

    .line 85
    .line 86
    .line 87
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    iput-object v0, v3, Lp/g$a;->r:Ljava/lang/Boolean;

    .line 90
    .line 91
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 92
    .line 93
    iput-object v0, v3, Lp/g$a;->h:Landroid/graphics/Bitmap$Config;

    .line 94
    .line 95
    const v0, 0x7f0800c9

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v0}, Lp/g$a;->d(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v0}, Lp/g$a;->c(I)V

    .line 102
    .line 103
    .line 104
    new-array v0, v4, [Ls/b;

    .line 105
    .line 106
    new-instance v1, Ls/a;

    .line 107
    .line 108
    const/high16 v4, 0x42400000    # 48.0f

    .line 109
    .line 110
    invoke-direct {v1, v4, v4, v4, v4}, Ls/a;-><init>(FFFF)V

    .line 111
    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    aput-object v1, v0, v4

    .line 115
    .line 116
    invoke-static {v0}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, v3, Lp/g$a;->m:Ljava/util/List;

    .line 125
    .line 126
    invoke-virtual {v3}, Lp/g$a;->a()Lp/g;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v2, v0}, Le/f;->a(Lp/g;)Lp/c;

    .line 131
    .line 132
    .line 133
    new-instance v0, Lt1/f;

    .line 134
    .line 135
    const/4 v1, 0x3

    .line 136
    invoke-direct {v0, v1, p0}, Lt1/f;-><init>(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemEditorServiceListBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d008e

    return v0
.end method

.method public final getListener()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->listener:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "listener"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "service"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setListener(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->listener:Lx9/l;

    return-void
.end method

.method public final setService(Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    return-void
.end method
