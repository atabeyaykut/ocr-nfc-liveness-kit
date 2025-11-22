.class public final Lt1/g;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lt1/g;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "imagepicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public a:Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;

.field public b:Lz1/b;

.field public final c:Ll9/j;

.field public final d:Ll9/j;

.field public final e:Ll9/j;

.field public final f:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lt1/u;

.field public h:Lt1/l;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lt1/g$d;

    invoke-direct {v0, p0}, Lt1/g$d;-><init>(Lt1/g;)V

    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object v0

    iput-object v0, p0, Lt1/g;->c:Ll9/j;

    new-instance v0, Lt1/g$a;

    invoke-direct {v0, p0}, Lt1/g$a;-><init>(Lt1/g;)V

    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object v0

    iput-object v0, p0, Lt1/g;->d:Ll9/j;

    sget-object v0, Lt1/g$c;->a:Lt1/g$c;

    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object v0

    iput-object v0, p0, Lt1/g;->e:Ll9/j;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v1, Lt1/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lt1/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lt1/g;->f:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final A()Lt1/d;
    .locals 1

    iget-object v0, p0, Lt1/g;->d:Ll9/j;

    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/d;

    return-object v0
.end method

.method public final B()V
    .locals 13

    .line 1
    iget-object v0, p0, Lt1/g;->g:Lt1/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lt1/g;->A()Lt1/d;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "config"

    .line 11
    .line 12
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, v0, Lt1/u;->a:Lx1/a;

    .line 16
    .line 17
    iget-object v4, v3, Lx1/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object v1, v3, Lx1/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    new-instance v12, Lt1/r;

    .line 27
    .line 28
    invoke-direct {v12, v0, v2}, Lt1/r;-><init>(Lt1/u;Lt1/d;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v7, v2, Lt1/d;->h:Z

    .line 32
    .line 33
    iget-boolean v9, v2, Lt1/d;->j:Z

    .line 34
    .line 35
    iget-boolean v8, v2, Lt1/d;->k:Z

    .line 36
    .line 37
    iget-boolean v10, v2, Lt1/d;->l:Z

    .line 38
    .line 39
    iget-object v11, v2, Lt1/d;->p:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, v3, Lx1/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 46
    .line 47
    iget-object v0, v3, Lx1/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lx1/a$a;

    .line 53
    .line 54
    iget-object v2, v3, Lx1/a;->a:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-string v2, "context.applicationContext"

    .line 61
    .line 62
    invoke-static {v6, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v5, v1

    .line 66
    invoke-direct/range {v5 .. v12}, Lx1/a$a;-><init>(Landroid/content/Context;ZZZZLjava/util/List;Lt1/r;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    const-string v0, "presenter"

    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1
.end method

.method public final C()V
    .locals 8

    .line 1
    iget-object v0, p0, Lt1/g;->e:Ll9/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, [Ljava/lang/String;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    const/4 v5, 0x1

    .line 13
    if-ge v4, v2, :cond_2

    .line 14
    .line 15
    aget-object v6, v1, v4

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-static {v7, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v6, 0x0

    .line 30
    :goto_1
    if-nez v6, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v1, 0x1

    .line 38
    :goto_2
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lt1/g;->B()V

    .line 41
    .line 42
    .line 43
    goto :goto_5

    .line 44
    :cond_3
    const-string v1, "ImagePicker"

    .line 45
    .line 46
    const-string v2, "Write External permission or Read Media Images is not granted. Requesting permission"

    .line 47
    .line 48
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, [Ljava/lang/String;

    .line 56
    .line 57
    array-length v2, v1

    .line 58
    const/4 v4, 0x0

    .line 59
    :goto_3
    if-ge v4, v2, :cond_5

    .line 60
    .line 61
    aget-object v6, v1, v4

    .line 62
    .line 63
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_4

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    const/4 v1, 0x0

    .line 75
    :goto_4
    iget-object v2, p0, Lt1/g;->f:Landroidx/activity/result/ActivityResultLauncher;

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, [Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_6
    iget-object v1, p0, Lt1/g;->c:Ll9/j;

    .line 90
    .line 91
    invoke-virtual {v1}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, La2/a;

    .line 96
    .line 97
    iget-object v4, v4, La2/a;->a:Landroid/content/SharedPreferences;

    .line 98
    .line 99
    const-string v6, "Key.WritePermissionGranted"

    .line 100
    .line 101
    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_7

    .line 106
    .line 107
    invoke-virtual {v1}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, La2/a;

    .line 112
    .line 113
    iget-object v1, v1, La2/a;->a:Landroid/content/SharedPreferences;

    .line 114
    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, [Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_7
    iget-object v0, p0, Lt1/g;->a:Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;

    .line 137
    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    iget-object v0, v0, Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;->b:Lcom/esafirm/imagepicker/view/SnackBarView;

    .line 141
    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    new-instance v1, Lt1/f;

    .line 145
    .line 146
    invoke-direct {v1, v3, p0}, Lt1/f;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/view/SnackBarView;->a(Lt1/f;)V

    .line 150
    .line 151
    .line 152
    :cond_8
    :goto_5
    return-void
.end method

.method public final D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lt1/g;->g:Lt1/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v2, p0, Lt1/g;->b:Lz1/b;

    .line 7
    .line 8
    if-eqz v2, :cond_4

    .line 9
    .line 10
    invoke-virtual {v2}, Lz1/b;->c()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lt1/g;->A()Lt1/d;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "config"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v2, v2, Lt1/d;->t:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-eqz v2, :cond_1

    .line 39
    .line 40
    sget-object v2, Lt1/s;->a:Lt1/s;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lt1/u;->a(Lx9/l;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance v2, Lt1/t;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Lt1/t;-><init>(Ljava/util/ArrayList;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lt1/u;->a(Lx9/l;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-void

    .line 63
    :cond_4
    const-string v0, "recyclerViewManager"

    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_5
    const-string v0, "presenter"

    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1
.end method

.method public final E()V
    .locals 8

    .line 1
    iget-object v0, p0, Lt1/g;->h:Lt1/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_11

    .line 5
    .line 6
    iget-object v2, p0, Lt1/g;->b:Lz1/b;

    .line 7
    .line 8
    if-eqz v2, :cond_10

    .line 9
    .line 10
    invoke-virtual {v2}, Lz1/b;->d()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    iget-object v6, v2, Lz1/b;->b:Lt1/d;

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {v2}, Lz1/b;->b()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "config"

    .line 25
    .line 26
    invoke-static {v6, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v6, Lt1/d;->b:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-static {v2}, Lmc/j;->y(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    :cond_0
    const/4 v4, 0x1

    .line 40
    :cond_1
    if-eqz v4, :cond_e

    .line 41
    .line 42
    const v2, 0x7f130088

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v1, "context.getString(R.string.ef_title_folder)"

    .line 50
    .line 51
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_2
    iget v3, v6, Lt1/d;->a:I

    .line 57
    .line 58
    iget-object v7, v6, Lt1/d;->c:Ljava/lang/String;

    .line 59
    .line 60
    if-ne v3, v5, :cond_5

    .line 61
    .line 62
    invoke-virtual {v2}, Lz1/b;->b()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v7, :cond_3

    .line 67
    .line 68
    invoke-static {v7}, Lmc/j;->y(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    :cond_3
    const/4 v4, 0x1

    .line 75
    :cond_4
    if-eqz v4, :cond_b

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    iget-object v3, v2, Lz1/b;->e:Ls1/g;

    .line 79
    .line 80
    if-eqz v3, :cond_f

    .line 81
    .line 82
    iget-object v1, v3, Ls1/g;->e:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v7, :cond_7

    .line 89
    .line 90
    invoke-static {v7}, Lmc/j;->y(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    const/4 v3, 0x0

    .line 98
    goto :goto_1

    .line 99
    :cond_7
    :goto_0
    const/4 v3, 0x1

    .line 100
    :goto_1
    if-nez v3, :cond_8

    .line 101
    .line 102
    if-nez v1, :cond_8

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_8
    const/4 v3, 0x0

    .line 107
    :goto_2
    if-eqz v3, :cond_c

    .line 108
    .line 109
    invoke-virtual {v2}, Lz1/b;->b()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v7, :cond_9

    .line 114
    .line 115
    invoke-static {v7}, Lmc/j;->y(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_a

    .line 120
    .line 121
    :cond_9
    const/4 v4, 0x1

    .line 122
    :cond_a
    if-eqz v4, :cond_b

    .line 123
    .line 124
    :goto_3
    const v2, 0x7f130089

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const-string v1, "context.getString(R.string.ef_title_select_image)"

    .line 132
    .line 133
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_b
    move-object v2, v7

    .line 138
    goto :goto_5

    .line 139
    :cond_c
    const/16 v3, 0x3e7

    .line 140
    .line 141
    iget v6, v6, Lt1/d;->f:I

    .line 142
    .line 143
    if-ne v6, v3, :cond_d

    .line 144
    .line 145
    invoke-virtual {v2}, Lz1/b;->b()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const v3, 0x7f130086

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string v3, "context.getString(R.string.ef_selected)"

    .line 157
    .line 158
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-array v3, v5, [Ljava/lang/Object;

    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    aput-object v1, v3, v4

    .line 168
    .line 169
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    goto :goto_4

    .line 178
    :cond_d
    invoke-virtual {v2}, Lz1/b;->b()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const v3, 0x7f130087

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const-string v3, "context.getString(R.string.ef_selected_with_limit)"

    .line 190
    .line 191
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/4 v3, 0x2

    .line 195
    new-array v7, v3, [Ljava/lang/Object;

    .line 196
    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    aput-object v1, v7, v4

    .line 202
    .line 203
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    aput-object v1, v7, v5

    .line 208
    .line 209
    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    :goto_4
    move-object v2, v1

    .line 218
    const-string v1, "format(format, *args)"

    .line 219
    .line 220
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_e
    :goto_5
    invoke-interface {v0, v2}, Lt1/l;->d(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_f
    const-string v0, "imageAdapter"

    .line 228
    .line 229
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v1

    .line 233
    :cond_10
    const-string v0, "recyclerViewManager"

    .line 234
    .line 235
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v1

    .line 239
    :cond_11
    const-string v0, "interactionListener"

    .line 240
    .line 241
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x7d0

    .line 5
    .line 6
    if-ne p1, p3, :cond_4

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 p3, -0x1

    .line 10
    const-string v0, "presenter"

    .line 11
    .line 12
    const-string v1, "requireContext()"

    .line 13
    .line 14
    if-eq p2, p3, :cond_2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p2, p0, Lt1/g;->g:Lt1/u;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p2, Lt1/u;->b:Lu1/a;

    .line 31
    .line 32
    invoke-interface {p2, p1}, Lu1/a;->b(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_2
    iget-object p2, p0, Lt1/g;->g:Lt1/u;

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lt1/g;->A()Lt1/d;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    new-instance v0, Lt1/o;

    .line 56
    .line 57
    invoke-direct {v0, p3, p2}, Lt1/o;-><init>(Lt1/d;Lt1/u;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p2, Lt1/u;->b:Lu1/a;

    .line 61
    .line 62
    invoke-interface {p2, p1, v0}, Lu1/a;->c(Landroid/content/Context;Lx9/l;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_4
    :goto_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Lt1/l;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Lt1/l;

    .line 14
    .line 15
    iput-object p1, p0, Lt1/g;->h:Lt1/l;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lt1/g;->b:Lz1/b;

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Lz1/b;->a(I)V

    return-void

    :cond_0
    const-string p1, "recyclerViewManager"

    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "requireActivity().contentResolver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lt1/g$b;

    invoke-direct {v2, p0}, Lt1/g$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;-><init>(Landroid/content/ContentResolver;Lt1/g$b;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt1/u;

    .line 7
    .line 8
    new-instance v1, Lx1/a;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "requireContext()"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lx1/a;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lt1/u;-><init>(Lx1/a;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lt1/g;->g:Lt1/u;

    .line 26
    .line 27
    iget-object v0, p0, Lt1/g;->h:Lt1/l;

    .line 28
    .line 29
    if-eqz v0, :cond_9

    .line 30
    .line 31
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0}, Lt1/g;->A()Lt1/d;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget v3, v3, Lt1/d;->g:I

    .line 42
    .line 43
    invoke-direct {v1, v2, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const v1, 0x7f0d0049

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;->bind(Landroid/view/View;)Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string v1, "bind(view)"

    .line 63
    .line 64
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-nez p3, :cond_0

    .line 68
    .line 69
    invoke-virtual {p0}, Lt1/g;->A()Lt1/d;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v1, v1, Lt1/d;->n:Ljava/util/List;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const-string v1, "Key.SelectedImages"

    .line 77
    .line 78
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :goto_0
    iget-object v3, p2, Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    const-string v4, "viewBinding.recyclerView"

    .line 85
    .line 86
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lt1/g;->A()Lt1/d;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    sget-object v5, Lm9/v;->a:Lm9/v;

    .line 94
    .line 95
    if-nez v1, :cond_1

    .line 96
    .line 97
    move-object v1, v5

    .line 98
    :cond_1
    new-instance v6, Lz1/b;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    .line 109
    .line 110
    invoke-direct {v6, v3, v4, v7}, Lz1/b;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lt1/d;I)V

    .line 111
    .line 112
    .line 113
    new-instance v3, Lt1/j;

    .line 114
    .line 115
    invoke-direct {v3, v6}, Lt1/j;-><init>(Lz1/b;)V

    .line 116
    .line 117
    .line 118
    new-instance v7, Lt1/i;

    .line 119
    .line 120
    invoke-direct {v7, v6, p0}, Lt1/i;-><init>(Lz1/b;Lt1/g;)V

    .line 121
    .line 122
    .line 123
    iget-object v8, v6, Lz1/b;->b:Lt1/d;

    .line 124
    .line 125
    iget v8, v8, Lt1/d;->a:I

    .line 126
    .line 127
    const/4 v9, 0x1

    .line 128
    if-ne v8, v9, :cond_2

    .line 129
    .line 130
    const/4 v8, 0x1

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    const/4 v8, 0x0

    .line 133
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-le v10, v9, :cond_3

    .line 138
    .line 139
    const/4 v2, 0x1

    .line 140
    :cond_3
    if-eqz v8, :cond_4

    .line 141
    .line 142
    if-eqz v2, :cond_4

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    move-object v5, v1

    .line 146
    :goto_2
    sget-object v1, Lc5/e0;->q:Lt1/c;

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    if-eqz v1, :cond_8

    .line 150
    .line 151
    invoke-interface {v1}, Lt1/c;->c()Ly1/b;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    new-instance v8, Ls1/g;

    .line 156
    .line 157
    invoke-virtual {v6}, Lz1/b;->b()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-direct {v8, v9, v1, v5, v3}, Ls1/g;-><init>(Landroid/content/Context;Ly1/b;Ljava/util/List;Lt1/j;)V

    .line 162
    .line 163
    .line 164
    iput-object v8, v6, Lz1/b;->e:Ls1/g;

    .line 165
    .line 166
    new-instance v3, Ls1/c;

    .line 167
    .line 168
    invoke-virtual {v6}, Lz1/b;->b()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    new-instance v8, Lz1/a;

    .line 173
    .line 174
    invoke-direct {v8, v6, v7}, Lz1/a;-><init>(Lz1/b;Lt1/i;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {v3, v5, v1, v8}, Ls1/c;-><init>(Landroid/content/Context;Ly1/b;Lz1/a;)V

    .line 178
    .line 179
    .line 180
    iput-object v3, v6, Lz1/b;->f:Ls1/c;

    .line 181
    .line 182
    new-instance v1, Lt1/h;

    .line 183
    .line 184
    invoke-direct {v1, p0, v0, v4}, Lt1/h;-><init>(Lt1/g;Lt1/l;Lt1/d;)V

    .line 185
    .line 186
    .line 187
    iget-object v3, v6, Lz1/b;->e:Ls1/g;

    .line 188
    .line 189
    if-eqz v3, :cond_7

    .line 190
    .line 191
    if-eqz v3, :cond_6

    .line 192
    .line 193
    iput-object v1, v3, Ls1/g;->f:Lx9/l;

    .line 194
    .line 195
    if-eqz p3, :cond_5

    .line 196
    .line 197
    const-string v1, "Key.Recycler"

    .line 198
    .line 199
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    iget-object v1, v6, Lz1/b;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 204
    .line 205
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 209
    .line 210
    .line 211
    :cond_5
    invoke-virtual {v6}, Lz1/b;->c()Ljava/util/ArrayList;

    .line 212
    .line 213
    .line 214
    invoke-interface {v0}, Lt1/l;->j()V

    .line 215
    .line 216
    .line 217
    iput-object p2, p0, Lt1/g;->a:Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;

    .line 218
    .line 219
    iput-object v6, p0, Lt1/g;->b:Lz1/b;

    .line 220
    .line 221
    return-object p1

    .line 222
    :cond_6
    const-string p1, "imageAdapter"

    .line 223
    .line 224
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v2

    .line 228
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 229
    .line 230
    const-string p2, "Must call setupAdapters first!"

    .line 231
    .line 232
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1

    .line 240
    :cond_8
    const-string p1, "internalComponents"

    .line 241
    .line 242
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v2

    .line 246
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 247
    .line 248
    const-string p2, "ImagePickerFragment needs an ImagePickerInteractionListener. This will be set automatically if the activity implements ImagePickerInteractionListener, and can be set manually with fragment.setInteractionListener(listener)."

    .line 249
    .line 250
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p1
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lt1/g;->g:Lt1/u;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Lt1/u;->a:Lx1/a;

    .line 10
    .line 11
    iget-object v2, v0, Lx1/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object v1, v0, Lx1/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const-string v0, "presenter"

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v1
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt1/g;->a:Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lt1/g;->C()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "outState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lt1/g;->b:Lz1/b;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "recyclerViewManager"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lz1/b;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v3, "Key.Recycler"

    .line 26
    .line 27
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lt1/g;->b:Lz1/b;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lz1/b;->c()Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "null cannot be cast to non-null type java.util.ArrayList<out android.os.Parcelable?>{ kotlin.collections.TypeAliasesKt.ArrayList<out android.os.Parcelable?> }"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "Key.SelectedImages"

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1
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
    iget-object p1, p0, Lt1/g;->g:Lt1/u;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p2, Lt1/k;

    .line 14
    .line 15
    invoke-direct {p2, p0}, Lt1/k;-><init>(Lt1/g;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Lt1/u;->c:Lc2/b;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lc2/b;->a:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    new-instance v0, Lc2/a;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1, p2}, Lc2/a;-><init>(ILx9/l;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p1, "presenter"

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    throw p1
.end method
