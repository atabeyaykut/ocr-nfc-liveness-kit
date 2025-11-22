.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Li8/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lee/a;",
        "Li8/d<",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;",
        "Lee/a;",
        "Li8/d;",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;",
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


# static fields
.field public static final synthetic k:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ll9/e;

.field public final b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public c:Landroid/content/Context;

.field public d:Lj8/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj8/d<",
            "Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;

.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Le8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;

    .line 5
    .line 6
    const-string v2, "viewModel"

    .line 7
    .line 8
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListViewModel;"

    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v0, v3

    .line 16
    .line 17
    const-string v2, "mMyCityBinding"

    .line 18
    .line 19
    const-string v3, "getMMyCityBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;"

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object v1, v0, v2

    .line 27
    .line 28
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0068

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    const-class v0, Ltf/i;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$c;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$d;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$c;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->a:Ll9/e;

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    sget-object v0, Lm9/v;->a:Lm9/v;

    invoke-static {v0}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->g:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->j:Z

    return-void
.end method

.method public static final E(Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;ZLtr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const v3, 0x7f0d00b0

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {p1, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v3, "null cannot be cast to non-null type com.google.android.material.chip.Chip"

    .line 25
    .line 26
    invoke-static {p1, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 30
    .line 31
    iget-object v3, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->e:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->f:Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lke/a;

    .line 55
    .line 56
    invoke-direct {v3, v2, p0, p2}, Lke/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Lcom/google/android/material/chip/Chip;->setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v3, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->f:Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->g:Ljava/util/HashMap;

    .line 71
    .line 72
    iget-object v3, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->f:Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->f:Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/view/View;

    .line 97
    .line 98
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    .line 113
    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    const/4 p1, 0x0

    .line 124
    goto :goto_2

    .line 125
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 126
    :goto_2
    if-eqz p1, :cond_3

    .line 127
    .line 128
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->c:Landroid/widget/HorizontalScrollView;

    .line 142
    .line 143
    const/16 p1, 0x8

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_3
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->c:Landroid/widget/HorizontalScrollView;

    .line 154
    .line 155
    new-instance p2, Landroidx/camera/view/g;

    .line 156
    .line 157
    invoke-direct {p2, v2, p0}, Landroidx/camera/view/g;-><init>(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->c:Landroid/widget/HorizontalScrollView;

    .line 168
    .line 169
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    :goto_3
    return-void
.end method


# virtual methods
.method public final F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    return-object v0
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->a:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ltf/i;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    :try_start_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->b:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, "mMyCityBinding.searchView.searchText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/d0;->x(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string v0, "mustAtLeastOne"

    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    :cond_0
    iput-boolean p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->j:Z

    .line 29
    .line 30
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->a:Ll9/e;

    .line 31
    .line 32
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ltf/i;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance p2, Ltf/j;

    .line 42
    .line 43
    const/16 v0, 0x5b

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {p2, p1, v0, v1}, Ltf/j;-><init>(Ltf/i;ILp9/d;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lr0/z;->c:Lnc/a0;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    const/4 v3, 0x3

    .line 53
    invoke-static {v0, v1, v2, p2, v3}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 54
    .line 55
    .line 56
    new-instance p2, Ltf/k;

    .line 57
    .line 58
    invoke-direct {p2, p1, v1}, Ltf/k;-><init>(Ltf/i;Lp9/d;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Ltf/i;->h:Ltf/l;

    .line 62
    .line 63
    invoke-static {v0, p1, p2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method

.method public final y()V
    .locals 0

    return-void
.end method
