.class public final Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;
.super Lu8/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;",
        "Lu8/a;",
        "Lqe/a;",
        "event",
        "Ll9/m;",
        "onEvent",
        "<init>",
        "()V",
        "ui-main_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public b:Z

.field public final c:Ll9/e;

.field public final d:Lff/b;

.field public e:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lu8/a;-><init>()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity$a;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity$a;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->c:Ll9/e;

    new-instance v0, Lff/b;

    invoke-direct {v0, p0}, Lff/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->d:Lff/b;

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->d:Lff/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lff/b;->f(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "super.getApplicationContext()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->d:Lff/b;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lff/d;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "super.getResources()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->d:Lff/b;

    invoke-virtual {v1, v0}, Lff/b;->b(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->d:Lff/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lff/b;->d()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lu8/a;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string v1, "favListFetched"

    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->b:Z

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 40
    .line 41
    .line 42
    const p1, 0x7f0a02da

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1}, Landroidx/navigation/ActivityKt;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x4

    .line 50
    new-array v2, v2, [Ljava/lang/Integer;

    .line 51
    .line 52
    const v3, 0x7f0a02e2

    .line 53
    .line 54
    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    aput-object v3, v2, v0

    .line 60
    .line 61
    const v0, 0x7f0a02e5

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v3, 0x1

    .line 69
    aput-object v0, v2, v3

    .line 70
    .line 71
    const v0, 0x7f0a02e4

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v3, 0x2

    .line 79
    aput-object v0, v2, v3

    .line 80
    .line 81
    const v0, 0x7f0a02e3

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/4 v3, 0x3

    .line 89
    aput-object v0, v2, v3

    .line 90
    .line 91
    invoke-static {v2}, Lx5/a;->s([Ljava/lang/Object;)Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v2, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    .line 96
    .line 97
    invoke-direct {v2, v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>(Ljava/util/Set;)V

    .line 98
    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-virtual {v2, v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->setOpenableLayout(Landroidx/customview/widget/Openable;)Landroidx/navigation/ui/AppBarConfiguration$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v3, Ldg/b;

    .line 106
    .line 107
    sget-object v4, Ldg/c;->a:Ldg/c;

    .line 108
    .line 109
    invoke-direct {v3, v4}, Ldg/b;-><init>(Ldg/c;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->setFallbackOnNavigateUpListener(Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;)Landroidx/navigation/ui/AppBarConfiguration$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const-string v3, "AppBarConfiguration.Buil\u2026eUpListener)\n    .build()"

    .line 121
    .line 122
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_1

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_1

    .line 140
    .line 141
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_1

    .line 146
    .line 147
    invoke-static {p1}, Lm9/t;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    move-object v0, p1

    .line 152
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 153
    .line 154
    :cond_1
    if-eqz v0, :cond_2

    .line 155
    .line 156
    new-instance p1, Lcom/google/android/material/transition/MaterialFadeThrough;

    .line 157
    .line 158
    invoke-direct {p1}, Lcom/google/android/material/transition/MaterialFadeThrough;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setExitTransition(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_2
    invoke-static {p0, v1, v2}, Landroidx/navigation/ui/ActivityKt;->setupActionBarWithNavController(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 165
    .line 166
    .line 167
    new-instance p1, Ldg/a;

    .line 168
    .line 169
    invoke-direct {p1, p0}, Ldg/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, p1}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 180
    .line 181
    const-string v0, "mainActivityBinding.navView"

    .line 182
    .line 183
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v1}, Landroidx/navigation/ui/BottomNavigationViewKt;->setupWithNavController(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroidx/navigation/NavController;)V

    .line 187
    .line 188
    .line 189
    :try_start_0
    iget-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->b:Z

    .line 190
    .line 191
    if-nez p1, :cond_3

    .line 192
    .line 193
    new-instance p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 194
    .line 195
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;

    .line 196
    .line 197
    invoke-direct {p1, v0}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    const-string v0, "OneTimeWorkRequestBuilde\u2026riteListWorker>().build()"

    .line 205
    .line 206
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 210
    .line 211
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    :catch_0
    :cond_3
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 219
    .line 220
    const/16 v0, 0x1a

    .line 221
    .line 222
    if-lt p1, v0, :cond_4

    .line 223
    .line 224
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->t()V

    .line 225
    .line 226
    .line 227
    :cond_4
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Lh5/k;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    new-instance v0, Landroidx/camera/core/impl/utils/futures/a;

    .line 236
    .line 237
    const/4 v1, 0x5

    .line 238
    invoke-direct {v0, v1, p0}, Landroidx/camera/core/impl/utils/futures/a;-><init>(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0}, Lh5/k;->b(Lh5/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    .line 243
    .line 244
    :catch_1
    :try_start_2
    new-instance p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 245
    .line 246
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;

    .line 247
    .line 248
    invoke-direct {p1, v0}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    const-string v0, "OneTimeWorkRequestBuilde\u2026oMessageWorker>().build()"

    .line 256
    .line 257
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 261
    .line 262
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    .line 268
    .line 269
    :catch_2
    return-void
.end method

.method public final onEvent(Lqe/a;)V
    .locals 2
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p1, Lqe/a;->a:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lqe/a;->b:Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lqe/b;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Lqe/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lqd/b;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :cond_0
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-class v0, Lqe/a;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->n(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->d:Lff/b;

    invoke-virtual {v0, p0}, Lff/b;->e(Landroid/content/Context;)V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onSupportNavigateUp()Z
    .locals 1

    const v0, 0x7f0a02da

    invoke-static {p0, v0}, Landroidx/navigation/ActivityKt;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final s()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "T\u00fcm Bildirimler"

    const/4 v2, 0x3

    const-string v3, "default"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "Islem Bildirimleri"

    const/4 v3, 0x4

    const-string v4, "otp"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/NotificationManager;

    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public final t()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroidx/camera/core/impl/k;

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    invoke-direct {v1, v2, p0}, Landroidx/camera/core/impl/k;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "registerForActivityResul\u2026          }\n            }"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->e:Landroidx/activity/result/ActivityResultLauncher;

    .line 36
    .line 37
    new-instance v0, Lv/e;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    const v1, 0x7f1301eb

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x6

    .line 47
    const v4, 0x7f1301ed

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v0, v2, v3, v4}, Landroidx/camera/camera2/internal/c;->e(ILv/e;Ljava/lang/CharSequence;II)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v3, Ldg/d;

    .line 55
    .line 56
    invoke-direct {v3, p0}, Ldg/d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;)V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x2

    .line 60
    invoke-static {v0, v1, v2, v3, v4}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 61
    .line 62
    .line 63
    const v1, 0x7f1301ec

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sget-object v2, Ldg/e;->a:Ldg/e;

    .line 71
    .line 72
    invoke-static {v0, v1, v2}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lv/e;->show()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->s()V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method public final u()Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->c:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;

    return-object v0
.end method
