.class public abstract Ln3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Ln3/a$c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ln3/a;

.field public final d:Ln3/a$c;

.field public final e:Lo3/a;

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public final h:Lo3/e0;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public final i:Lc5/v;

.field public final j:Lo3/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/app/Activity;Ln3/a;Ln3/a$c$c;Ln3/c$a;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ln3/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ln3/a$c$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ln3/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ln3/c;-><init>(Landroid/content/Context;Landroid/app/Activity;Ln3/a;Ln3/a$c;Ln3/c$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ln3/a;Ln3/a$c;Ln3/c$a;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    if-eqz p1, :cond_f

    const-string v0, "Api must not be null."

    if-eqz p3, :cond_e

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    if-eqz p5, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ln3/c;->a:Landroid/content/Context;

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v1, "getAttributionTag"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Ln3/c;->b:Ljava/lang/String;

    iput-object p3, p0, Ln3/c;->c:Ln3/a;

    iput-object p4, p0, Ln3/c;->d:Ln3/a$c;

    iget-object v0, p5, Ln3/c$a;->b:Landroid/os/Looper;

    iput-object v0, p0, Ln3/c;->f:Landroid/os/Looper;

    .line 3
    new-instance v0, Lo3/a;

    invoke-direct {v0, p3, p4, p1}, Lo3/a;-><init>(Ln3/a;Ln3/a$c;Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Ln3/c;->e:Lo3/a;

    new-instance p1, Lo3/e0;

    invoke-direct {p1, p0}, Lo3/e0;-><init>(Ln3/c;)V

    iput-object p1, p0, Ln3/c;->h:Lo3/e0;

    iget-object p1, p0, Ln3/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lo3/d;->e(Landroid/content/Context;)Lo3/d;

    move-result-object p1

    iput-object p1, p0, Ln3/c;->j:Lo3/d;

    .line 5
    iget-object p3, p1, Lo3/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p3

    .line 7
    iput p3, p0, Ln3/c;->g:I

    iget-object p3, p5, Ln3/c$a;->a:Lc5/v;

    iput-object p3, p0, Ln3/c;->i:Lc5/v;

    if-eqz p2, :cond_c

    instance-of p3, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p3, :cond_c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    if-ne p3, p4, :cond_c

    .line 8
    instance-of p3, p2, Landroidx/fragment/app/FragmentActivity;

    if-eqz p3, :cond_5

    .line 9
    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    const-string p3, "SupportLifecycleFragmentImpl"

    .line 10
    sget-object p4, Lo3/g1;->d:Ljava/util/WeakHashMap;

    invoke-virtual {p4, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/ref/WeakReference;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo3/g1;

    if-nez p5, :cond_9

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p5

    invoke-virtual {p5, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p5

    check-cast p5, Lo3/g1;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance p5, Lo3/g1;

    invoke-direct {p5}, Lo3/g1;-><init>()V

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p5, p3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_4
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, p2, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    const-string p3, "LifecycleFragmentImpl"

    .line 11
    sget-object p4, Lo3/e1;->d:Ljava/util/WeakHashMap;

    invoke-virtual {p4, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/ref/WeakReference;

    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo3/e1;

    if-nez p5, :cond_9

    :cond_6
    :try_start_2
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p5

    invoke-virtual {p5, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p5

    check-cast p5, Lo3/e1;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p5, :cond_7

    invoke-virtual {p5}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance p5, Lo3/e1;

    invoke-direct {p5}, Lo3/e1;-><init>()V

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p5, p3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_8
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, p2, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_9
    :goto_2
    invoke-interface {p5}, Lo3/g;->h()Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object p2

    check-cast p2, Lo3/r;

    if-nez p2, :cond_a

    new-instance p2, Lo3/r;

    sget-object p3, Lm3/e;->c:Ljava/lang/Object;

    invoke-direct {p2, p5, p1}, Lo3/r;-><init>(Lo3/g;Lo3/d;)V

    :cond_a
    iget-object p3, p2, Lo3/r;->f:Landroidx/collection/ArraySet;

    invoke-virtual {p3, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object p3, Lo3/d;->r:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    iget-object p4, p1, Lo3/d;->k:Lo3/r;

    if-eq p4, p2, :cond_b

    iput-object p2, p1, Lo3/d;->k:Lo3/r;

    iget-object p4, p1, Lo3/d;->l:Landroidx/collection/ArraySet;

    invoke-interface {p4}, Ljava/util/Set;->clear()V

    :cond_b
    iget-object p4, p1, Lo3/d;->l:Landroidx/collection/ArraySet;

    .line 14
    iget-object p2, p2, Lo3/r;->f:Landroidx/collection/ArraySet;

    .line 15
    invoke-interface {p4, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit p3

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catch_2
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 17
    :cond_c
    :goto_3
    iget-object p1, p1, Lo3/d;->n:Lh4/i;

    const/4 p2, 0x7

    .line 18
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 19
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ln3/a;Ln3/a$c;Lc5/v;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ln3/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ln3/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lc5/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ln3/a<",
            "TO;>;TO;",
            "Lc5/v;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Ln3/c$a;

    invoke-direct {v1, p4, v0}, Ln3/c$a;-><init>(Lc5/v;Landroid/os/Looper;)V

    .line 21
    invoke-direct {p0, p1, p2, p3, v1}, Ln3/c;-><init>(Landroid/content/Context;Ln3/a;Ln3/a$c;Ln3/c$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln3/a;Ln3/a$c;Ln3/c$a;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ln3/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ln3/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ln3/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ln3/a<",
            "TO;>;TO;",
            "Ln3/c$a;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ln3/c;-><init>(Landroid/content/Context;Landroid/app/Activity;Ln3/a;Ln3/a$c;Ln3/c$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lr3/e$a;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lr3/e$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lr3/e$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ln3/c;->d:Ln3/a$c;

    .line 7
    .line 8
    instance-of v2, v1, Ln3/a$c$b;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    move-object v3, v1

    .line 13
    check-cast v3, Ln3/a$c$b;

    .line 14
    .line 15
    invoke-interface {v3}, Ln3/a$c$b;->m()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    iget-object v3, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v4, Landroid/accounts/Account;

    .line 27
    .line 28
    const-string v5, "com.google"

    .line 29
    .line 30
    invoke-direct {v4, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    instance-of v3, v1, Ln3/a$c$a;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    move-object v3, v1

    .line 39
    check-cast v3, Ln3/a$c$a;

    .line 40
    .line 41
    invoke-interface {v3}, Ln3/a$c$a;->o()Landroid/accounts/Account;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 47
    :goto_1
    iput-object v4, v0, Lr3/e$a;->a:Landroid/accounts/Account;

    .line 48
    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    check-cast v1, Ln3/a$c$b;

    .line 52
    .line 53
    invoke-interface {v1}, Ln3/a$c$b;->m()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->E()Ljava/util/HashSet;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :goto_3
    iget-object v2, v0, Lr3/e$a;->b:Landroidx/collection/ArraySet;

    .line 70
    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    new-instance v2, Landroidx/collection/ArraySet;

    .line 74
    .line 75
    invoke-direct {v2}, Landroidx/collection/ArraySet;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v2, v0, Lr3/e$a;->b:Landroidx/collection/ArraySet;

    .line 79
    .line 80
    :cond_5
    iget-object v2, v0, Lr3/e$a;->b:Landroidx/collection/ArraySet;

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Ln3/c;->a:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iput-object v2, v0, Lr3/e$a;->d:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, v0, Lr3/e$a;->c:Ljava/lang/String;

    .line 102
    .line 103
    return-object v0
.end method

.method public final b(ILcom/google/android/gms/common/api/internal/a;)V
    .locals 2
    .param p2    # Lcom/google/android/gms/common/api/internal/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j:Lo3/b1;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    iput-boolean v0, p2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i:Z

    .line 24
    .line 25
    iget-object v0, p0, Ln3/c;->j:Lo3/d;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v1, Lo3/t0;

    .line 31
    .line 32
    invoke-direct {v1, p1, p2}, Lo3/t0;-><init>(ILcom/google/android/gms/common/api/internal/a;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Lo3/d;->n:Lh4/i;

    .line 36
    .line 37
    new-instance p2, Lo3/l0;

    .line 38
    .line 39
    iget-object v0, v0, Lo3/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-direct {p2, v1, v0, p0}, Lo3/l0;-><init>(Lo3/w0;ILn3/c;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x4

    .line 49
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final c(ILo3/m;)Lh5/z;
    .locals 17
    .param p2    # Lo3/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lh5/l;

    .line 6
    .line 7
    invoke-direct {v2}, Lh5/l;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v11, v0, Ln3/c;->j:Lo3/d;

    .line 11
    .line 12
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget v5, v1, Lo3/m;->c:I

    .line 16
    .line 17
    iget-object v12, v11, Lo3/d;->n:Lh4/i;

    .line 18
    .line 19
    iget-object v13, v2, Lh5/l;->a:Lh5/z;

    .line 20
    .line 21
    if-eqz v5, :cond_9

    .line 22
    .line 23
    iget-object v6, v0, Ln3/c;->e:Lo3/a;

    .line 24
    .line 25
    invoke-virtual {v11}, Lo3/d;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-static {}, Lr3/s;->a()Lr3/s;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v3, v3, Lr3/s;->a:Lr3/t;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v3, :cond_6

    .line 40
    .line 41
    iget-boolean v7, v3, Lr3/t;->b:Z

    .line 42
    .line 43
    if-nez v7, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v7, v11, Lo3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Lo3/a0;

    .line 53
    .line 54
    if-eqz v7, :cond_5

    .line 55
    .line 56
    iget-object v8, v7, Lo3/a0;->b:Ln3/a$e;

    .line 57
    .line 58
    instance-of v9, v8, Lr3/c;

    .line 59
    .line 60
    if-nez v9, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    check-cast v8, Lr3/c;

    .line 64
    .line 65
    iget-object v9, v8, Lr3/c;->v:Lr3/b1;

    .line 66
    .line 67
    if-eqz v9, :cond_3

    .line 68
    .line 69
    const/4 v9, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v9, 0x0

    .line 72
    :goto_0
    if-eqz v9, :cond_5

    .line 73
    .line 74
    invoke-virtual {v8}, Lr3/c;->e()Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-nez v9, :cond_5

    .line 79
    .line 80
    invoke-static {v7, v8, v5}, Lo3/i0;->a(Lo3/a0;Lr3/c;I)Lr3/f;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-nez v3, :cond_4

    .line 85
    .line 86
    :goto_1
    const/4 v3, 0x0

    .line 87
    goto :goto_5

    .line 88
    :cond_4
    iget v8, v7, Lo3/a0;->l:I

    .line 89
    .line 90
    add-int/2addr v8, v4

    .line 91
    iput v8, v7, Lo3/a0;->l:I

    .line 92
    .line 93
    iget-boolean v4, v3, Lr3/f;->c:Z

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    iget-boolean v4, v3, Lr3/t;->c:Z

    .line 97
    .line 98
    :cond_6
    :goto_2
    new-instance v14, Lo3/i0;

    .line 99
    .line 100
    const-wide/16 v7, 0x0

    .line 101
    .line 102
    if-eqz v4, :cond_7

    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v9

    .line 108
    goto :goto_3

    .line 109
    :cond_7
    move-wide v9, v7

    .line 110
    :goto_3
    if-eqz v4, :cond_8

    .line 111
    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    move-wide v15, v3

    .line 117
    goto :goto_4

    .line 118
    :cond_8
    move-wide v15, v7

    .line 119
    :goto_4
    move-object v3, v14

    .line 120
    move-object v4, v11

    .line 121
    move-wide v7, v9

    .line 122
    move-wide v9, v15

    .line 123
    invoke-direct/range {v3 .. v10}, Lo3/i0;-><init>(Lo3/d;ILo3/a;JJ)V

    .line 124
    .line 125
    .line 126
    :goto_5
    if-eqz v3, :cond_9

    .line 127
    .line 128
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    new-instance v4, Lo3/u;

    .line 132
    .line 133
    invoke-direct {v4, v12}, Lo3/u;-><init>(Lh4/i;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v13, v4, v3}, Lh5/z;->o(Ljava/util/concurrent/Executor;Lh5/e;)Lh5/z;

    .line 137
    .line 138
    .line 139
    :cond_9
    new-instance v3, Lo3/u0;

    .line 140
    .line 141
    iget-object v4, v0, Ln3/c;->i:Lc5/v;

    .line 142
    .line 143
    move/from16 v5, p1

    .line 144
    .line 145
    invoke-direct {v3, v5, v1, v2, v4}, Lo3/u0;-><init>(ILo3/m;Lh5/l;Lc5/v;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lo3/l0;

    .line 149
    .line 150
    iget-object v2, v11, Lo3/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-direct {v1, v3, v2, v0}, Lo3/l0;-><init>(Lo3/w0;ILn3/c;)V

    .line 157
    .line 158
    .line 159
    const/4 v2, 0x4

    .line 160
    invoke-virtual {v12, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v12, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    .line 166
    .line 167
    return-object v13
.end method
