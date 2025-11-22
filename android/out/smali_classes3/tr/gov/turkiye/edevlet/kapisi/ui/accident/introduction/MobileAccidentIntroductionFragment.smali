.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;",
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
.field public static final synthetic g:[Lda/m;
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

.field public c:Lm4/d;

.field public d:Lv/e;

.field public e:Landroid/content/Context;

.field public f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;

    .line 5
    .line 6
    const-string v2, "mIntroductionBinding"

    .line 7
    .line 8
    const-string v3, "getMIntroductionBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;"

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
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->g:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0062

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Ljh/c;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$f;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$f;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$g;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$g;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$f;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->g:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$g;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->b:Ll9/e;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->g:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;

    return-object v0
.end method

.method public final F()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->e:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    const-string v2, "location"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "null cannot be cast to non-null type android.location.LocationManager"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v2, Landroid/location/LocationManager;

    .line 19
    .line 20
    const-string v3, "gps"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    sget v2, Lw4/d;->a:I

    .line 29
    .line 30
    new-instance v2, Lm4/d;

    .line 31
    .line 32
    invoke-direct {v2, v1}, Lm4/d;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->c:Lm4/d;

    .line 36
    .line 37
    new-instance v1, Lh5/q;

    .line 38
    .line 39
    invoke-direct {v1}, Lh5/q;-><init>()V

    .line 40
    .line 41
    .line 42
    const/16 v3, 0x64

    .line 43
    .line 44
    invoke-static {v3}, Lx5/a;->y(I)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Lw4/a;

    .line 48
    .line 49
    const-wide/32 v5, 0xea60

    .line 50
    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    const-wide v9, 0x7fffffffffffffffL

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v13, 0x0

    .line 61
    new-instance v14, Landroid/os/WorkSource;

    .line 62
    .line 63
    const/4 v15, 0x0

    .line 64
    invoke-direct {v14, v15}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 65
    .line 66
    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    const/16 v8, 0x64

    .line 70
    .line 71
    move-object v4, v3

    .line 72
    move-object/from16 v17, v15

    .line 73
    .line 74
    move-object/from16 v15, v16

    .line 75
    .line 76
    invoke-direct/range {v4 .. v15}, Lw4/a;-><init>(JIIJZILjava/lang/String;Landroid/os/WorkSource;Lm4/p;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lh5/q;->b()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    xor-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    const-string v5, "cancellationToken may not be already canceled"

    .line 86
    .line 87
    invoke-static {v4, v5}, Lr3/r;->b(ZLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v4, Lo3/m$a;

    .line 91
    .line 92
    invoke-direct {v4}, Lo3/m$a;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v5, Lcom/google/android/gms/internal/clearcut/b0;

    .line 96
    .line 97
    invoke-direct {v5, v3, v1}, Lcom/google/android/gms/internal/clearcut/b0;-><init>(Lw4/a;Lh5/q;)V

    .line 98
    .line 99
    .line 100
    iput-object v5, v4, Lo3/m$a;->a:Lo3/k;

    .line 101
    .line 102
    const/16 v3, 0x96f

    .line 103
    .line 104
    iput v3, v4, Lo3/m$a;->d:I

    .line 105
    .line 106
    invoke-virtual {v4}, Lo3/m$a;->a()Lo3/q0;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const/4 v4, 0x0

    .line 111
    invoke-virtual {v2, v4, v3}, Ln3/c;->c(ILo3/m;)Lh5/z;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    new-instance v3, Lh5/l;

    .line 116
    .line 117
    invoke-direct {v3, v1}, Lh5/l;-><init>(Lh5/q;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lf0/b;

    .line 121
    .line 122
    invoke-direct {v1, v3}, Lf0/b;-><init>(Lh5/l;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v1}, Lh5/z;->f(Lh5/b;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->c:Lm4/d;

    .line 129
    .line 130
    if-eqz v1, :cond_0

    .line 131
    .line 132
    new-instance v2, Lo3/m$a;

    .line 133
    .line 134
    invoke-direct {v2}, Lo3/m$a;-><init>()V

    .line 135
    .line 136
    .line 137
    sget-object v3, La0/b;->m:La0/b;

    .line 138
    .line 139
    iput-object v3, v2, Lo3/m$a;->a:Lo3/k;

    .line 140
    .line 141
    const/16 v3, 0x96e

    .line 142
    .line 143
    iput v3, v2, Lo3/m$a;->d:I

    .line 144
    .line 145
    invoke-virtual {v2}, Lo3/m$a;->a()Lo3/q0;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v1, v4, v2}, Ln3/c;->c(ILo3/m;)Lh5/z;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$c;

    .line 154
    .line 155
    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;)V

    .line 156
    .line 157
    .line 158
    new-instance v3, Landroidx/camera/core/impl/p;

    .line 159
    .line 160
    const/4 v4, 0x7

    .line 161
    invoke-direct {v3, v4, v2}, Landroidx/camera/core/impl/p;-><init>(ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    sget-object v2, Lh5/m;->a:Lh5/y;

    .line 168
    .line 169
    invoke-virtual {v1, v2, v3}, Lh5/z;->d(Ljava/util/concurrent/Executor;Lh5/g;)Lh5/z;

    .line 170
    .line 171
    .line 172
    new-instance v3, Landroidx/camera/camera2/interop/f;

    .line 173
    .line 174
    const/4 v4, 0x6

    .line 175
    invoke-direct {v3, v4, v0}, Landroidx/camera/camera2/interop/f;-><init>(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2, v3}, Lh5/z;->c(Ljava/util/concurrent/Executor;Lh5/f;)Lh5/z;

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_0
    const-string v1, "fusedLocationClient"

    .line 183
    .line 184
    invoke-static {v1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v17

    .line 188
    :cond_1
    const v1, 0x7f13012c

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->H(I)V

    .line 192
    .line 193
    .line 194
    :cond_2
    :goto_0
    return-void
.end method

.method public final G(I)V
    .locals 5

    .line 1
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->e:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Lv/e;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const v1, 0x7f1301ea

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    const/4 v3, 0x0

    .line 15
    const v4, 0x7f1301ef

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0, v3, v2, v4}, Landroidx/camera/camera2/internal/c;->e(ILv/e;Ljava/lang/CharSequence;II)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$d;

    .line 23
    .line 24
    invoke-direct {v2, p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$d;-><init>(Landroid/content/Context;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    invoke-static {v0, v1, v3, v2, p1}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 29
    .line 30
    .line 31
    const p1, 0x7f1301ee

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$e;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$e;

    .line 39
    .line 40
    invoke-static {v0, p1, v1}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lv/e;->show()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final H(I)V
    .locals 4

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget v1, Lke/d;->a:I

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "mIntroductionBinding.mkt\u2026roductionContentContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f060025

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f060097

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v0}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->b:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljh/c;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;)V

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

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    if-eq p1, p2, :cond_2

    .line 16
    .line 17
    const/4 p2, 0x2

    .line 18
    const v0, 0x7f1301ea

    .line 19
    .line 20
    .line 21
    if-eq p1, p2, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x3

    .line 24
    if-eq p1, p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    array-length p1, p3

    .line 28
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Ltd/a;->d([I)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->G(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    array-length p1, p3

    .line 43
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Ltd/a;->d([I)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->G(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    array-length p1, p3

    .line 58
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Ltd/a;->d([I)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->F()V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->e:Landroid/content/Context;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget p2, Lw4/d;->a:I

    .line 18
    .line 19
    new-instance p2, Lm4/d;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Lm4/d;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->c:Lm4/d;

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->e:Landroid/content/Context;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const-string p2, "layout_inflater"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 37
    .line 38
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Landroid/view/LayoutInflater;

    .line 42
    .line 43
    const p2, 0x7f0d0108

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "inflater.inflate(R.layout.progress_dialog, null)"

    .line 52
    .line 53
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Lv/e;

    .line 57
    .line 58
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->e:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p2, v0}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->d:Lv/e;

    .line 67
    .line 68
    invoke-static {p2, p1}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->d:Lv/e;

    .line 72
    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-virtual {p1, p2}, Lv/e;->b(Z)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;->d:Lcom/google/android/material/button/MaterialButton;

    .line 84
    .line 85
    new-instance p2, Lzd/e;

    .line 86
    .line 87
    const/16 v0, 0xd

    .line 88
    .line 89
    invoke-direct {p2, v0, p0}, Lzd/e;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;->c:Lcom/google/android/material/button/MaterialButton;

    .line 100
    .line 101
    new-instance p2, Lt1/f;

    .line 102
    .line 103
    const/16 v1, 0xc

    .line 104
    .line 105
    invoke-direct {p2, v1, p0}, Lt1/f;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;->b:Landroid/widget/Button;

    .line 116
    .line 117
    new-instance p2, Lxf/d;

    .line 118
    .line 119
    invoke-direct {p2, v0, p0}, Lxf/d;-><init>(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
