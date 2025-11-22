.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;",
        "Lee/a;",
        "<init>",
        "()V",
        "ui-mobile-accident_release"
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
.field public final a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public final b:Ll9/e;

.field public c:Lv/e;

.field public d:Landroid/content/Context;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;

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
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;

    .line 5
    .line 6
    const-string v2, "mConditionListBinding"

    .line 7
    .line 8
    const-string v3, "getMConditionListBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;"

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
    const-string v2, "viewModel"

    .line 18
    .line 19
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->k:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0056

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Lbh/c;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$c;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$d;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$c;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->k:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->b:Ll9/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->k:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    return-object v0
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->b:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lbh/c;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/w;->v(Landroidx/fragment/app/Fragment;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->d:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string v0, "latitude"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p1, p2

    .line 30
    :goto_0
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->e:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const-string v0, "longitude"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object p1, p2

    .line 46
    :goto_1
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->f:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const-string v0, "partyRole"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move-object p1, p2

    .line 62
    :goto_2
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->g:Ljava/lang/String;

    .line 63
    .line 64
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->d:Landroid/content/Context;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    const-string v0, "layout_inflater"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 75
    .line 76
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    check-cast p1, Landroid/view/LayoutInflater;

    .line 80
    .line 81
    const v0, 0x7f0d0108

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "inflater.inflate(R.layout.progress_dialog, null)"

    .line 89
    .line 90
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance p2, Lv/e;

    .line 94
    .line 95
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->d:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p2, v0}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->c:Lv/e;

    .line 104
    .line 105
    invoke-static {p2, p1}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->c:Lv/e;

    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    const/4 p2, 0x0

    .line 113
    invoke-virtual {p1, p2}, Lv/e;->b(Z)V

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->c:Lcom/google/android/material/button/MaterialButton;

    .line 121
    .line 122
    new-instance p2, Lie/d;

    .line 123
    .line 124
    const/16 v0, 0xb

    .line 125
    .line 126
    invoke-direct {p2, v0, p0}, Lie/d;-><init>(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->d:Lcom/google/android/material/button/MaterialButton;

    .line 137
    .line 138
    new-instance p2, Lzd/e;

    .line 139
    .line 140
    const/16 v0, 0xc

    .line 141
    .line 142
    invoke-direct {p2, v0, p0}, Lzd/e;-><init>(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->b:Lcom/google/android/material/button/MaterialButton;

    .line 153
    .line 154
    new-instance p2, Lt1/f;

    .line 155
    .line 156
    const/16 v0, 0xa

    .line 157
    .line 158
    invoke-direct {p2, v0, p0}, Lt1/f;-><init>(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method
