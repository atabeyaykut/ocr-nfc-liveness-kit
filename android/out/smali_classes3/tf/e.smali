.class public final Ltf/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le8/m<",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;)V
    .locals 0

    iput-object p1, p0, Ltf/e;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le8/j;Z)V
    .locals 5

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Ltf/e;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;

    .line 5
    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    iget-object p2, v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->d:Lj8/d;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    new-instance v3, Landroidx/collection/ArraySet;

    .line 14
    .line 15
    invoke-direct {v3}, Landroidx/collection/ArraySet;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lj8/c;

    .line 19
    .line 20
    invoke-direct {v4, v3}, Lj8/c;-><init>(Landroidx/collection/ArraySet;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p2, Lj8/d;->f:Le8/b;

    .line 24
    .line 25
    invoke-virtual {p2, v4}, Le8/b;->j(Lk8/a;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 v3, 0x5

    .line 33
    const/4 v4, 0x1

    .line 34
    if-gt p2, v3, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    :cond_0
    iput-boolean v0, p1, Lh8/b;->c:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-static {v1, v4, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;ZLtr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->c:Landroid/content/Context;

    .line 46
    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    const v0, 0x7f0a02dc

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :cond_2
    sget p2, Lke/d;->a:I

    .line 63
    .line 64
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    .line 70
    const-string v0, "mMyCityBinding.cityContainer"

    .line 71
    .line 72
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const v0, 0x7f060025

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const v1, 0x7f060154

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const v1, 0x7f1300ff

    .line 90
    .line 91
    .line 92
    invoke-static {p2, v1, v2, v0, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    const-string p1, "mSelectExtension"

    .line 103
    .line 104
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v2

    .line 108
    :cond_4
    iput-boolean v0, p1, Lh8/b;->c:Z

    .line 109
    .line 110
    invoke-static {v1, v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;ZLtr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    :goto_0
    return-void
.end method
