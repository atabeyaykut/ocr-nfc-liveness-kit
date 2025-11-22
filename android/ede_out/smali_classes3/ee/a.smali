.class public abstract Lee/a;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lr0/w;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lee/a;",
        "Landroidx/fragment/app/Fragment;",
        "Lr0/w;",
        "",
        "containerLayoutId",
        "<init>",
        "(I)V",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lee/a;-><init>(IILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/d;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lee/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lr0/x;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lr0/x;

    .line 13
    .line 14
    iget-object v0, v0, Lr0/x;->a:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public final B(Laf/c;Lkotlin/jvm/internal/r;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/q;)V
    .locals 4

    .line 1
    const-string v0, "$this$onEach"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "prop1"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "prop2"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "deliveryMode"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    :cond_0
    move-object v0, p0

    .line 29
    :goto_0
    iget-object v1, p1, Lr0/z;->d:Lr0/r;

    .line 30
    .line 31
    invoke-interface {v1}, Lr0/r;->a()Lkotlinx/coroutines/flow/w;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lr0/n0;

    .line 36
    .line 37
    invoke-direct {v2, v1, p2, p3}, Lr0/n0;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/internal/r;Lkotlin/jvm/internal/r;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lb8/f;->z(Lkotlinx/coroutines/flow/f;)Lkotlinx/coroutines/flow/f;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x2

    .line 45
    new-array v2, v2, [Lda/l;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    aput-object p2, v2, v3

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    aput-object p3, v2, p2

    .line 52
    .line 53
    invoke-virtual {p4, v2}, Lr0/h;->a([Lda/l;)Lr0/h;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    new-instance p3, Lr0/o0;

    .line 58
    .line 59
    const/4 p4, 0x0

    .line 60
    invoke-direct {p3, p5, p4}, Lr0/o0;-><init>(Lx9/q;Lp9/d;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1, v0, p2, p3}, Lr0/z;->b(Lkotlinx/coroutines/flow/f;Landroidx/lifecycle/LifecycleOwner;Lr0/h;Lx9/p;)Lnc/t1;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V
    .locals 4

    .line 1
    const-string v0, "$this$onEach"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "prop1"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "deliveryMode"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    :cond_0
    move-object v0, p0

    .line 24
    :goto_0
    iget-object v1, p1, Lr0/z;->d:Lr0/r;

    .line 25
    .line 26
    invoke-interface {v1}, Lr0/r;->a()Lkotlinx/coroutines/flow/w;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lr0/l0;

    .line 31
    .line 32
    invoke-direct {v2, v1, p2}, Lr0/l0;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/internal/r;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lb8/f;->z(Lkotlinx/coroutines/flow/f;)Lkotlinx/coroutines/flow/f;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x1

    .line 40
    new-array v2, v2, [Lda/l;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    aput-object p2, v2, v3

    .line 44
    .line 45
    invoke-virtual {p3, v2}, Lr0/h;->a([Lda/l;)Lr0/h;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    new-instance p3, Lr0/m0;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {p3, p4, v2}, Lr0/m0;-><init>(Lx9/p;Lp9/d;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1, v0, p2, p3}, Lr0/z;->b(Lkotlinx/coroutines/flow/f;Landroidx/lifecycle/LifecycleOwner;Lr0/h;Lx9/p;)Lnc/t1;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final D(Ljava/lang/String;)Lr0/e1;
    .locals 9

    .line 1
    new-instance v0, Lr0/e1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/String;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0}, Lee/a;->A()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    aput-object v3, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aput-object p1, v1, v2

    .line 15
    .line 16
    invoke-static {v1}, Lm9/k;->p0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "_"

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/16 v8, 0x3e

    .line 26
    .line 27
    invoke-static/range {v3 .. v8}, Lm9/t;->g1(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Lr0/e1;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final w()V
    .locals 2

    .line 1
    sget-object v0, Lr0/y;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lr0/y;->b:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
