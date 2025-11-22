.class public final Lr0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Lr0/z<",
        "TS;>;S::",
        "Lr0/p;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TVM;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TS;>;"
        }
    .end annotation
.end field

.field public final c:Lr0/f1;

.field public final d:Ljava/lang/String;

.field public final e:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "TS;TS;>;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Lr0/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/q<",
            "TVM;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lr0/f1;Ljava/lang/String;Lx9/l;ZLr0/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TVM;>;",
            "Ljava/lang/Class<",
            "+TS;>;",
            "Lr0/f1;",
            "Ljava/lang/String;",
            "Lx9/l<",
            "-TS;+TS;>;Z",
            "Lr0/q<",
            "TVM;TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/l;->a:Ljava/lang/Class;

    iput-object p2, p0, Lr0/l;->b:Ljava/lang/Class;

    iput-object p3, p0, Lr0/l;->c:Lr0/f1;

    iput-object p4, p0, Lr0/l;->d:Ljava/lang/String;

    iput-object p5, p0, Lr0/l;->e:Lx9/l;

    iput-boolean p6, p0, Lr0/l;->f:Z

    iput-object p7, p0, Lr0/l;->g:Lr0/q;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lr0/l;->c:Lr0/f1;

    iget-object v0, p0, Lr0/l;->a:Ljava/lang/Class;

    iget-object v1, p0, Lr0/l;->e:Lx9/l;

    if-nez v1, :cond_1

    iget-boolean v2, p0, Lr0/l;->f:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lma/w;

    iget-object v2, p0, Lr0/l;->d:Ljava/lang/String;

    invoke-direct {v1, v0, p1, v2}, Lma/w;-><init>(Ljava/lang/Class;Lr0/f1;Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lr0/l$a;->a:Lr0/l$a;

    .line 1
    :goto_1
    const-class v2, Lr0/p;

    const-class v3, Lr0/f1;

    const-string v4, "create"

    iget-object v5, p0, Lr0/l;->g:Lr0/q;

    iget-object v6, p0, Lr0/l;->b:Ljava/lang/Class;

    invoke-interface {v5, v0, v6, p1, v1}, Lr0/q;->a(Ljava/lang/Class;Ljava/lang/Class;Lr0/f1;Lx9/l;)Lr0/p;

    move-result-object v1

    invoke-static {v0}, Lc5/w;->o(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    const/4 v10, 0x2

    :try_start_0
    new-array v11, v10, [Ljava/lang/Class;

    aput-object v3, v11, v9

    aput-object v2, v11, v7

    invoke-virtual {v5, v4, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-static {v5}, Lc5/w;->w(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    new-array v12, v10, [Ljava/lang/Object;

    aput-object p1, v12, v9

    aput-object v1, v12, v7

    invoke-virtual {v11, v5, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0/z;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-array v5, v10, [Ljava/lang/Class;

    aput-object v3, v5, v9

    aput-object v2, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    aput-object p1, v3, v9

    aput-object v1, v3, v7

    invoke-virtual {v2, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lr0/z;

    goto :goto_2

    :cond_3
    move-object v5, v8

    :goto_2
    if-eqz v5, :cond_4

    goto :goto_5

    .line 2
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    array-length p1, p1

    if-ne p1, v7, :cond_7

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    aget-object p1, p1, v9

    const-string v2, "primaryConstructor"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v7, :cond_7

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_1
    invoke-virtual {p1, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewModel class is not public and MvRx could not make the primary constructor accessible."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :goto_3
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v9

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lr0/z;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v8, p1

    :goto_4
    check-cast v8, Lr0/z;

    :cond_7
    move-object v5, v8

    :goto_5
    if-nez v5, :cond_a

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    const-string v1, "viewModelClass.constructors"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm9/k;->r0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_9

    array-length p1, p1

    if-le p1, v7, :cond_8

    const/4 v9, 0x1

    :cond_8
    if-ne v9, v7, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " takes dependencies other than initialState. It must have companion object implementing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lr0/r0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with a create method returning a non-null ViewModel."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must have primary constructor with a single non-optional parameter that takes initial state of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance p1, Lr0/v0;

    invoke-direct {p1, v5}, Lr0/v0;-><init>(Lr0/z;)V

    return-object p1
.end method

.method public final synthetic create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/ViewModelProvider$Factory;Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method
