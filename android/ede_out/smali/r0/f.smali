.class public final Lr0/f;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx9/l;

.field public final synthetic b:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lx9/l;)V
    .locals 0

    iput-object p2, p0, Lr0/f;->a:Lx9/l;

    iput-object p1, p0, Lr0/f;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lr0/y0;

    .line 2
    .line 3
    invoke-direct {v0}, Lr0/y0;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lr0/f;->a:Lx9/l;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lr0/z;

    .line 13
    .line 14
    new-instance v1, Lr0/e;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, v2, p0}, Lr0/e;-><init>(Lp9/d;Lr0/f;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lr0/z0;->a:Lr0/z0;

    .line 21
    .line 22
    const-string v3, "$this$_internal"

    .line 23
    .line 24
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v3, "deliveryMode"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, v0, Lr0/z;->d:Lr0/r;

    .line 33
    .line 34
    invoke-interface {v3}, Lr0/r;->a()Lkotlinx/coroutines/flow/w;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lr0/f;->b:Landroidx/fragment/app/Fragment;

    .line 39
    .line 40
    invoke-virtual {v0, v3, v4, v2, v1}, Lr0/z;->b(Lkotlinx/coroutines/flow/f;Landroidx/lifecycle/LifecycleOwner;Lr0/h;Lx9/p;)Lnc/t1;

    .line 41
    .line 42
    .line 43
    return-object v0
.end method
