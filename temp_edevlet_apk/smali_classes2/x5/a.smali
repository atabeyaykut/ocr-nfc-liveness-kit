.class public Lx5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/f;
.implements Lbc/k;
.implements Lc5/p2;
.implements Lrc/b;
.implements Lc6/h;


# static fields
.field public static final synthetic a:Lx5/a;

.field public static final b:Lx5/a;

.field public static final synthetic c:Lx5/a;

.field public static final d:Lcom/google/android/gms/internal/measurement/g8;

.field public static final e:Lcom/google/android/gms/internal/measurement/h8;

.field public static final f:Lx5/a;

.field public static g:Le/f;

.field public static h:Lcom/google/android/gms/internal/clearcut/z;

.field public static final j:Lkotlinx/coroutines/internal/u;

.field public static final k:Lkotlinx/coroutines/internal/u;

.field public static final synthetic l:Lx5/a;

.field public static m:Ln4/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx5/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lx5/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx5/a;->a:Lx5/a;

    .line 7
    .line 8
    new-instance v0, Lx5/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lx5/a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lx5/a;->b:Lx5/a;

    .line 14
    .line 15
    new-instance v0, Lx5/a;

    .line 16
    .line 17
    invoke-direct {v0}, Lx5/a;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lx5/a;->c:Lx5/a;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/measurement/g8;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/g8;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lx5/a;->d:Lcom/google/android/gms/internal/measurement/g8;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/measurement/h8;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/h8;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lx5/a;->e:Lcom/google/android/gms/internal/measurement/h8;

    .line 35
    .line 36
    new-instance v0, Lx5/a;

    .line 37
    .line 38
    invoke-direct {v0}, Lx5/a;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lx5/a;->f:Lx5/a;

    .line 42
    .line 43
    new-instance v0, Lkotlinx/coroutines/internal/u;

    .line 44
    .line 45
    const-string v1, "NONE"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lx5/a;->j:Lkotlinx/coroutines/internal/u;

    .line 51
    .line 52
    new-instance v0, Lkotlinx/coroutines/internal/u;

    .line 53
    .line 54
    const-string v1, "PENDING"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lx5/a;->k:Lkotlinx/coroutines/internal/u;

    .line 60
    .line 61
    new-instance v0, Lx5/a;

    .line 62
    .line 63
    invoke-direct {v0}, Lx5/a;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lx5/a;->l:Lx5/a;

    .line 67
    .line 68
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static B(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static C(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_3

    const/16 v0, 0x66

    if-eq p0, v0, :cond_2

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1

    const/16 v0, 0x69

    if-ne p0, v0, :cond_0

    const-string p0, "PASSIVE"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "LOW_POWER"

    return-object p0

    :cond_2
    const-string p0, "BALANCED_POWER_ACCURACY"

    return-object p0

    :cond_3
    const-string p0, "HIGH_ACCURACY"

    return-object p0
.end method

.method public static D(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget v0, Ls4/ea;->a:I

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public static E(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static final c(Landroidx/fragment/app/Fragment;)Ljava/lang/Object;
    .locals 1

    const-string v0, "$this$_fragmentArgsProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "mavericks:arg"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final d(Lp9/f;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget v0, Lnc/b1;->d0:I

    sget-object v0, Lnc/b1$b;->a:Lnc/b1$b;

    invoke-interface {p0, v0}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object p0

    check-cast p0, Lnc/b1;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lnc/b1;->a(Ljava/util/concurrent/CancellationException;)V

    :goto_0
    return-void
.end method

.method public static final f(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final g(Lma/e;Leb/z;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "klass"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeMappingConfiguration"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p0}, Leb/z;->d(Lma/e;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Lma/e;->b()Lma/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "klass.containingDeclaration"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Lma/j;->getName()Llb/f;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    sget-object v2, Llb/h;->a:Llb/f;

    .line 30
    .line 31
    iget-boolean v2, v1, Llb/f;->b:Z

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v1, Llb/h;->c:Llb/f;

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v1}, Llb/f;->q()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "safeIdentifier(klass.name).identifier"

    .line 43
    .line 44
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    instance-of v2, v0, Lma/e0;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    check-cast v0, Lma/e0;

    .line 52
    .line 53
    invoke-interface {v0}, Lma/e0;->d()Llb/c;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Llb/c;->d()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Llb/c;->b()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const/16 v0, 0x2e

    .line 74
    .line 75
    const/16 v2, 0x2f

    .line 76
    .line 77
    invoke-static {p0, v0, v2}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_1
    return-object v1

    .line 95
    :cond_2
    instance-of v2, v0, Lma/e;

    .line 96
    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    move-object v2, v0

    .line 100
    check-cast v2, Lma/e;

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const/4 v2, 0x0

    .line 104
    :goto_2
    if-eqz v2, :cond_4

    .line 105
    .line 106
    invoke-interface {p1, v2}, Leb/z;->e(Lma/e;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v2, p1}, Lx5/a;->g(Lma/e;Leb/z;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const/16 p0, 0x24

    .line 122
    .line 123
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v2, "Unexpected container: "

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, " for "

    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1
.end method

.method public static final h(Lp9/f;)V
    .locals 1

    .line 1
    sget-object v0, Lnc/b1$b;->a:Lnc/b1$b;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnc/b1;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0}, Lnc/b1;->b()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-interface {p0}, Lnc/b1;->n()Ljava/util/concurrent/CancellationException;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    throw p0
.end method

.method public static final j(Lv/e;I)Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;
    .locals 1

    const-string v0, "$this$getActionButton"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "which"

    invoke-static {p1, v0}, Landroidx/appcompat/graphics/drawable/a;->j(ILjava/lang/String;)V

    iget-object p0, p0, Lv/e;->f:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getButtonsLayout()Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getActionButtons()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    if-eqz p0, :cond_1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The dialog does not have an attached buttons layout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final k(Lp9/f;)Lnc/b1;
    .locals 2

    sget v0, Lnc/b1;->d0:I

    sget-object v0, Lnc/b1$b;->a:Lnc/b1$b;

    invoke-interface {p0, v0}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object v0

    check-cast v0, Lnc/b1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current context doesn\'t contain Job in it: "

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final l(Landroid/content/Context;)Le/f;
    .locals 4

    .line 1
    sget-object v0, Lx5/a;->g:Le/f;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    sget-object v0, Lx5/a;->f:Lx5/a;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lx5/a;->g:Le/f;

    .line 9
    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Le/g;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    check-cast v1, Le/g;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, v3

    .line 25
    :goto_0
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-interface {v1}, Le/g;->a()Le/f;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_1
    if-nez v3, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Lb8/f;->u(Landroid/content/Context;)Le/h;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :cond_2
    sput-object v3, Lx5/a;->g:Le/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    move-object v1, v3

    .line 41
    :cond_3
    monitor-exit v0

    .line 42
    move-object v0, v1

    .line 43
    goto :goto_2

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0

    .line 46
    throw p0

    .line 47
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static final m(Lq/e;)Z
    .locals 1

    sget-object v0, Lq/e;->c:Lq/e;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final n(Ljava/lang/Throwable;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intellij.openapi.progress.ProcessCanceledException"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public static final o(Lcc/e0;Leb/a0;Lx9/q;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Leb/p;->a:Leb/p;

    sget-object v4, Lc5/u;->g:Lc5/u;

    const-string v5, "kotlinType"

    .line 2
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "writeGenericType"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lja/f;->i(Lcc/e0;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    sget-object v3, Lja/p;->a:Lpa/h0;

    .line 3
    invoke-static/range {p0 .. p0}, Lja/f;->i(Lcc/e0;)Z

    invoke-static/range {p0 .. p0}, Lc5/y;->o(Lcc/e0;)Lja/k;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcc/e0;->getAnnotations()Lna/h;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lja/f;->f(Lcc/e0;)Lcc/e0;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lja/f;->d(Lcc/e0;)Ljava/util/List;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lja/f;->g(Lcc/e0;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcc/i1;

    invoke-interface {v5}, Lcc/i1;->getType()Lcc/e0;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v3, Lcc/a1;->b:Lcc/a1$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v3, Lcc/a1;->c:Lcc/a1;

    .line 5
    sget-object v5, Lja/p;->a:Lpa/h0;

    invoke-virtual {v5}, Lpa/h0;->i()Lcc/c1;

    move-result-object v5

    .line 6
    invoke-static/range {p0 .. p0}, Lja/f;->h(Lcc/e0;)Z

    invoke-virtual/range {p0 .. p0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lm9/t;->i1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcc/i1;

    invoke-interface {v12}, Lcc/i1;->getType()Lcc/e0;

    move-result-object v12

    const-string v13, "arguments.last().type"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v12}, Lc5/y;->d(Lcc/e0;)Lcc/k1;

    move-result-object v12

    invoke-static {v12}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 8
    invoke-static {v3, v5, v12, v6, v7}, Lcc/f0;->f(Lcc/a1;Lcc/c1;Ljava/util/List;ZLdc/f;)Lcc/m0;

    move-result-object v3

    .line 9
    invoke-static {v3, v4}, Lm9/t;->n1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Lc5/y;->o(Lcc/e0;)Lja/k;

    move-result-object v3

    invoke-virtual {v3}, Lja/k;->o()Lcc/m0;

    move-result-object v13

    const/4 v14, 0x0

    .line 10
    invoke-static/range {v8 .. v14}, Lja/f;->b(Lja/k;Lna/h;Lcc/e0;Ljava/util/List;Ljava/util/ArrayList;Lcc/e0;Z)Lcc/m0;

    move-result-object v3

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcc/e0;->N0()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcc/m0;->T0(Z)Lcc/m0;

    move-result-object v0

    .line 12
    invoke-static {v0, v1, v2}, Lx5/a;->o(Lcc/e0;Leb/a0;Lx9/q;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 13
    :cond_1
    invoke-static/range {p0 .. p0}, Ldc/b$a;->i(Lfc/h;)Lcc/m0;

    move-result-object v5

    if-nez v5, :cond_3

    .line 14
    invoke-static/range {p0 .. p0}, Ldc/b$a;->g(Lfc/h;)Lcc/y;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 15
    invoke-static {v5}, Ldc/b$a;->W(Lfc/f;)Lcc/m0;

    move-result-object v5

    if-nez v5, :cond_3

    .line 16
    :cond_2
    invoke-static/range {p0 .. p0}, Ldc/b$a;->i(Lfc/h;)Lcc/m0;

    move-result-object v5

    .line 17
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 18
    :cond_3
    invoke-static {v5}, Ldc/b$a;->f0(Lfc/i;)Lcc/c1;

    move-result-object v5

    .line 19
    invoke-static {v5}, Ldc/b$a;->G(Lfc/l;)Z

    move-result v8

    const/4 v9, 0x4

    const-string v10, "byFqNameWithoutInnerClas\u2026apperFqName).internalName"

    const/4 v11, 0x1

    const-string v12, "["

    if-nez v8, :cond_4

    goto/16 :goto_5

    .line 20
    :cond_4
    invoke-static {v5}, Ldc/b$a;->t(Lfc/l;)Lja/l;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 21
    invoke-virtual {v3, v8}, Leb/p;->c(Lja/l;)Leb/o$c;

    move-result-object v5

    .line 22
    invoke-static/range {p0 .. p0}, Ldc/b$a;->P(Lfc/h;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 23
    sget-object v8, Lva/x;->p:Llb/c;

    const-string v13, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {v0, v8}, Ldc/b$a;->C(Lfc/h;Llb/c;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v8, 0x1

    :goto_2
    const-string v13, "possiblyPrimitiveType"

    .line 25
    invoke-static {v5, v13}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_f

    .line 26
    iget-object v8, v5, Leb/o$c;->i:Ltb/c;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ltb/c;->t()Llb/c;

    move-result-object v5

    invoke-static {v5}, Ltb/b;->c(Llb/c;)Ltb/b;

    move-result-object v5

    invoke-virtual {v5}, Ltb/b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v8, Leb/o$b;

    invoke-direct {v8, v5}, Leb/o$b;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    goto/16 :goto_6

    .line 28
    :cond_7
    invoke-static {v5}, Ldc/b$a;->s(Lfc/l;)Lja/l;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    sget-object v13, Ltb/c;->q:Ljava/util/EnumMap;

    invoke-virtual {v13, v8}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltb/c;

    if-eqz v8, :cond_8

    .line 31
    invoke-virtual {v8}, Ltb/c;->q()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-static {v5}, Leb/p;->a(Ljava/lang/String;)Leb/o;

    move-result-object v5

    goto :goto_6

    .line 33
    :cond_8
    invoke-static {v9}, Ltb/c;->n(I)V

    throw v7

    .line 34
    :cond_9
    invoke-static {v5}, Ldc/b$a;->V(Lfc/l;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 35
    invoke-static {v5}, Ldc/b$a;->p(Lfc/l;)Llb/d;

    move-result-object v5

    .line 36
    sget-object v8, Lla/c;->a:Ljava/lang/String;

    invoke-static {v5}, Lla/c;->g(Llb/d;)Llb/b;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-boolean v8, v1, Leb/a0;->g:Z

    if-nez v8, :cond_d

    .line 37
    sget-object v8, Lla/c;->n:Ljava/util/List;

    .line 38
    check-cast v8, Ljava/lang/Iterable;

    instance-of v13, v8, Ljava/util/Collection;

    if-eqz v13, :cond_a

    move-object v13, v8

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lla/c$a;

    .line 39
    iget-object v13, v13, Lla/c$a;->a:Llb/b;

    .line 40
    invoke-static {v13, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v8, 0x1

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_d

    goto :goto_5

    :cond_d
    invoke-static {v5}, Ltb/b;->b(Llb/b;)Ltb/b;

    move-result-object v5

    invoke-virtual {v5}, Ltb/b;->e()Ljava/lang/String;

    move-result-object v5

    const-string v8, "byClassId(classId).internalName"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Leb/p;->b(Ljava/lang/String;)Leb/o$b;

    move-result-object v5

    goto :goto_6

    :cond_e
    :goto_5
    move-object v5, v7

    :cond_f
    :goto_6
    if-eqz v5, :cond_11

    .line 41
    iget-boolean v3, v1, Leb/a0;->a:Z

    if-eqz v3, :cond_10

    .line 42
    instance-of v3, v5, Leb/o$c;

    if-eqz v3, :cond_10

    move-object v3, v5

    check-cast v3, Leb/o$c;

    iget-object v3, v3, Leb/o$c;->i:Ltb/c;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ltb/c;->t()Llb/c;

    move-result-object v3

    invoke-static {v3}, Ltb/b;->c(Llb/c;)Ltb/b;

    move-result-object v3

    invoke-virtual {v3}, Ltb/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v5, Leb/o$b;

    invoke-direct {v5, v3}, Leb/o$b;-><init>(Ljava/lang/String;)V

    .line 44
    :cond_10
    invoke-interface {v2, v0, v5, v1}, Lx9/q;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v5

    instance-of v8, v5, Lcc/c0;

    if-eqz v8, :cond_13

    check-cast v5, Lcc/c0;

    .line 45
    iget-object v0, v5, Lcc/c0;->a:Lcc/e0;

    if-eqz v0, :cond_12

    .line 46
    invoke-static {v0}, Lc5/y;->A(Lcc/e0;)Lcc/s1;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lx5/a;->o(Lcc/e0;Leb/a0;Lx9/q;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 47
    :cond_12
    iget-object v0, v5, Lcc/c0;->b:Ljava/util/LinkedHashSet;

    .line 48
    invoke-virtual {v4, v0}, Lc5/u;->l(Ljava/util/LinkedHashSet;)Lcc/e0;

    throw v7

    :cond_13
    invoke-interface {v5}, Lcc/c1;->n()Lma/g;

    move-result-object v5

    if-eqz v5, :cond_23

    invoke-static {v5}, Lec/i;->f(Lma/j;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v0, "error/NonExistentClass"

    invoke-virtual {v3, v0}, Leb/p;->b(Ljava/lang/String;)Leb/o$b;

    move-result-object v0

    check-cast v5, Lma/e;

    return-object v0

    :cond_14
    instance-of v7, v5, Lma/e;

    iget-boolean v8, v1, Leb/a0;->c:Z

    if-eqz v7, :cond_1b

    invoke-static/range {p0 .. p0}, Lja/k;->y(Lcc/e0;)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v11, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/i1;

    invoke-interface {v0}, Lcc/i1;->getType()Lcc/e0;

    move-result-object v4

    const-string v5, "memberProjection.type"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcc/i1;->b()Lcc/t1;

    move-result-object v5

    sget-object v6, Lcc/t1;->d:Lcc/t1;

    if-ne v5, v6, :cond_15

    const-string v0, "java/lang/Object"

    invoke-virtual {v3, v0}, Leb/p;->b(Ljava/lang/String;)Leb/o$b;

    move-result-object v0

    goto :goto_8

    :cond_15
    invoke-interface {v0}, Lcc/i1;->b()Lcc/t1;

    move-result-object v0

    const-string v5, "memberProjection.projectionKind"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_16

    goto :goto_7

    .line 49
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_18

    if-eq v0, v11, :cond_17

    iget-object v0, v1, Leb/a0;->f:Leb/a0;

    if-nez v0, :cond_19

    goto :goto_7

    :cond_17
    iget-object v0, v1, Leb/a0;->h:Leb/a0;

    if-nez v0, :cond_19

    goto :goto_7

    :cond_18
    iget-object v0, v1, Leb/a0;->i:Leb/a0;

    if-nez v0, :cond_19

    :goto_7
    move-object v0, v1

    .line 50
    :cond_19
    invoke-static {v4, v0, v2}, Lx5/a;->o(Lcc/e0;Leb/a0;Lx9/q;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Leb/p;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Leb/p;->a(Ljava/lang/String;)Leb/o;

    move-result-object v0

    return-object v0

    .line 52
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "arrays must have one type argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    if-eqz v7, :cond_1f

    invoke-static {v5}, Lob/k;->b(Lma/j;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-boolean v6, v1, Leb/a0;->b:Z

    if-nez v6, :cond_1c

    .line 53
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/clearcut/d0;->k(Lfc/h;Ljava/util/HashSet;)Lfc/h;

    move-result-object v6

    .line 54
    check-cast v6, Lcc/e0;

    if-eqz v6, :cond_1c

    .line 55
    new-instance v0, Leb/a0;

    iget-boolean v11, v1, Leb/a0;->a:Z

    const/4 v12, 0x1

    iget-boolean v13, v1, Leb/a0;->c:Z

    iget-boolean v14, v1, Leb/a0;->d:Z

    iget-boolean v15, v1, Leb/a0;->e:Z

    iget-object v3, v1, Leb/a0;->f:Leb/a0;

    iget-boolean v4, v1, Leb/a0;->g:Z

    iget-object v5, v1, Leb/a0;->h:Leb/a0;

    iget-object v1, v1, Leb/a0;->i:Leb/a0;

    const/16 v20, 0x0

    const/16 v21, 0x200

    move-object v10, v0

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v1

    invoke-direct/range {v10 .. v21}, Leb/a0;-><init>(ZZZZZLeb/a0;ZLeb/a0;Leb/a0;ZI)V

    .line 56
    invoke-static {v6, v0, v2}, Lx5/a;->o(Lcc/e0;Leb/a0;Lx9/q;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1c
    if-eqz v8, :cond_1d

    move-object v6, v5

    check-cast v6, Lma/e;

    .line 57
    sget-object v7, Lja/o$a;->P:Llb/d;

    invoke-static {v6, v7}, Lja/k;->c(Lma/g;Llb/d;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 58
    invoke-virtual {v3}, Leb/p;->d()Leb/o$b;

    move-result-object v3

    goto :goto_9

    :cond_1d
    check-cast v5, Lma/e;

    invoke-interface {v5}, Lma/e;->a()Lma/e;

    move-result-object v6

    const-string v7, "descriptor.original"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lma/e;->h()I

    move-result v6

    if-ne v6, v9, :cond_1e

    invoke-interface {v5}, Lma/e;->b()Lma/j;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lma/e;

    :cond_1e
    invoke-interface {v5}, Lma/e;->a()Lma/e;

    move-result-object v5

    const-string v6, "enumClassIfEnumEntry.original"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lx5/a;->g(Lma/e;Leb/z;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Leb/p;->b(Ljava/lang/String;)Leb/o$b;

    move-result-object v3

    :goto_9
    invoke-interface {v2, v0, v3, v1}, Lx9/q;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_1f
    instance-of v3, v5, Lma/w0;

    if-eqz v3, :cond_21

    check-cast v5, Lma/w0;

    invoke-static {v5}, Lc5/y;->p(Lma/w0;)Lcc/e0;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcc/e0;->N0()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {v2}, Lc5/y;->x(Lcc/e0;)Lcc/s1;

    move-result-object v2

    .line 59
    :cond_20
    sget-object v0, Lkc/b;->b:Lkc/b$e;

    .line 60
    invoke-static {v2, v1, v0}, Lx5/a;->o(Lcc/e0;Leb/a0;Lx9/q;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_21
    instance-of v3, v5, Lma/v0;

    if-eqz v3, :cond_22

    iget-boolean v3, v1, Leb/a0;->j:Z

    if-eqz v3, :cond_22

    check-cast v5, Lma/v0;

    invoke-interface {v5}, Lma/v0;->R()Lcc/m0;

    move-result-object v0

    :try_start_0
    invoke-static {v0, v1, v2}, Lx5/a;->o(Lcc/e0;Leb/a0;Lx9/q;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_22
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no descriptor for type constructor of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lnc/r;

    if-eqz v0, :cond_0

    check-cast p0, Lnc/r;

    iget-object p0, p0, Lnc/r;->a:Ljava/lang/Throwable;

    invoke-static {p0}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final q(Lnc/i0;Lp9/d;Z)V
    .locals 3

    invoke-virtual {p0}, Lnc/i0;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnc/i0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnc/i0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_5

    check-cast p1, Lkotlinx/coroutines/internal/g;

    iget-object p2, p1, Lkotlinx/coroutines/internal/g;->e:Lp9/d;

    invoke-interface {p2}, Lp9/d;->getContext()Lp9/f;

    move-result-object v0

    iget-object v1, p1, Lkotlinx/coroutines/internal/g;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/w;->c(Lp9/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/internal/w;->a:Lkotlinx/coroutines/internal/u;

    if-eq v1, v2, :cond_1

    invoke-static {p2, v0, v1}, Lnc/w;->c(Lp9/d;Lp9/f;Ljava/lang/Object;)Lnc/z1;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    :try_start_0
    iget-object p1, p1, Lkotlinx/coroutines/internal/g;->e:Lp9/d;

    invoke-interface {p1, p0}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lnc/z1;->m0()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_2
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/w;->a(Lp9/f;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lnc/z1;->m0()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/w;->a(Lp9/f;Ljava/lang/Object;)V

    :cond_4
    throw p0

    :cond_5
    invoke-interface {p1, p0}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static final r(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "singleton(element)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final varargs s([Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-static {p0}, Lm9/k;->C0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lm9/x;->a:Lm9/x;

    :goto_0
    return-object p0
.end method

.method public static final t(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final u(Lr0/z;Lx9/l;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "viewModel1"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lr0/z;->d:Lr0/r;

    .line 12
    .line 13
    invoke-interface {p0}, Lr0/r;->c()Lr0/p;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static v(Lcom/google/android/gms/internal/measurement/l;Lcom/google/android/gms/internal/measurement/t;Lcom/google/android/gms/internal/measurement/s3;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/p;
    .locals 4

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/l;->m(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/l;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/j;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/measurement/j;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/j;->a(Lcom/google/android/gms/internal/measurement/s3;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "%s is not a function"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v0, "hasOwnProperty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0, v2, p3}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/l;->m(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/measurement/p;->S:Lcom/google/android/gms/internal/measurement/g;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/p;->U:Lcom/google/android/gms/internal/measurement/g;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Object has no function %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w(Lcom/google/android/gms/internal/vision/p0;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/w5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/w5;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/p0;->x()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/w5;->a:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v3, v2

    .line 19
    check-cast v3, Lcom/google/android/gms/internal/vision/p0;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/p0;->x()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge p0, v3, :cond_4

    .line 26
    .line 27
    check-cast v2, Lcom/google/android/gms/internal/vision/p0;

    .line 28
    .line 29
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/vision/p0;->h(I)B

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0x22

    .line 34
    .line 35
    if-eq v2, v3, :cond_3

    .line 36
    .line 37
    const/16 v3, 0x27

    .line 38
    .line 39
    if-eq v2, v3, :cond_2

    .line 40
    .line 41
    const/16 v3, 0x5c

    .line 42
    .line 43
    if-eq v2, v3, :cond_1

    .line 44
    .line 45
    packed-switch v2, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    const/16 v4, 0x20

    .line 49
    .line 50
    if-lt v2, v4, :cond_0

    .line 51
    .line 52
    const/16 v4, 0x7e

    .line 53
    .line 54
    if-gt v2, v4, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :pswitch_0
    const-string v2, "\\r"

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :pswitch_1
    const-string v2, "\\f"

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :pswitch_2
    const-string v2, "\\v"

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :pswitch_3
    const-string v2, "\\n"

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :pswitch_4
    const-string v2, "\\t"

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :pswitch_5
    const-string v2, "\\b"

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :pswitch_6
    const-string v2, "\\a"

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    ushr-int/lit8 v3, v2, 0x6

    .line 82
    .line 83
    and-int/lit8 v3, v3, 0x3

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x30

    .line 86
    .line 87
    int-to-char v3, v3

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    ushr-int/lit8 v3, v2, 0x3

    .line 92
    .line 93
    and-int/lit8 v3, v3, 0x7

    .line 94
    .line 95
    add-int/lit8 v3, v3, 0x30

    .line 96
    .line 97
    int-to-char v3, v3

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    and-int/lit8 v2, v2, 0x7

    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x30

    .line 104
    .line 105
    :goto_1
    int-to-char v2, v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_1
    const-string v2, "\\\\"

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const-string v2, "\\\'"

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    const-string v2, "\\\""

    .line 117
    .line 118
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :goto_3
    add-int/lit8 p0, p0, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs x(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    const-string v2, "null"

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.common.base.Strings"

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "Exception during lenientFormat for "

    if-eqz v6, :cond_1

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v7, v5

    const-string v5, "com.google.common.base.Strings"

    const-string v6, "lenientToString"

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x9

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "<"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " threw "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_3
    array-length v3, p1

    if-ge v0, v3, :cond_4

    const-string v4, "%s"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x2

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-ge v0, v3, :cond_6

    const-string p0, " ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_5
    array-length v0, p1

    if-ge p0, v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p0, 0x1

    aget-object p0, p1, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move p0, v0

    goto :goto_5

    :cond_5
    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(I)V
    .locals 3

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1

    const/16 v0, 0x69

    if-ne p0, v0, :cond_0

    const/16 p0, 0x69

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "priority %d must be a Priority.PRIORITY_* constant"

    invoke-static {v0, p0, v2}, Lr3/r;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs z(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    const-string v2, "null"

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.common.base.Strings"

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "Exception during lenientFormat for "

    if-eqz v6, :cond_1

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v7, v5

    const-string v5, "com.google.common.base.Strings"

    const-string v6, "lenientToString"

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x9

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "<"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " threw "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_3
    array-length v3, p1

    if-ge v0, v3, :cond_4

    const-string v4, "%s"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x2

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-ge v0, v3, :cond_6

    const-string p0, " ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_5
    array-length v0, p1

    if-ge p0, v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p0, 0x1

    aget-object p0, p1, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move p0, v0

    goto :goto_5

    :cond_5
    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lc5/r2;->a:Ljava/util/List;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/q9;->b:Lcom/google/android/gms/internal/measurement/q9;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q9;->b()Lcom/google/android/gms/internal/measurement/r9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/r9;->o()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public b(Lrc/e0;Lrc/b0;)V
    .locals 0

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->e:Lr3/j;

    .line 2
    .line 3
    iget-object v1, v0, Lr3/j;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const-string v1, "Error preloading model resource"

    .line 13
    .line 14
    iget-object v0, v0, Lr3/j;->b:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    const-string v0, "MobileVisionBase"

    .line 24
    .line 25
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public i(Lc6/y;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance p1, Lv7/a;

    .line 2
    .line 3
    invoke-direct {p1}, Lv7/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lv7/o;

    .line 7
    .line 8
    iget-object v1, p1, Lv7/a;->a:Ljava/lang/ref/ReferenceQueue;

    .line 9
    .line 10
    iget-object v2, p1, Lv7/a;->b:Ljava/util/Set;

    .line 11
    .line 12
    invoke-direct {v0, p1, v1, v2}, Lv7/o;-><init>(Lv7/a;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    new-instance v0, Lc5/e5;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lc5/e5;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/lang/Thread;

    .line 24
    .line 25
    const-string v2, "MlKitCleaner"

    .line 26
    .line 27
    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 35
    .line 36
    .line 37
    return-object p1
.end method

.method public lock()V
    .locals 0

    return-void
.end method

.method public unlock()V
    .locals 0

    return-void
.end method
