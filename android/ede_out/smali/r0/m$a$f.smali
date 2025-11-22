.class public final Lr0/m$a$f;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/m$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/q<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Object;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1$transform$1"
    f = "MavericksLifecycleAwareFlow.kt"
    l = {
        0x23
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Z

.field public synthetic b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lr0/m$a;


# direct methods
.method public constructor <init>(Lr0/m$a;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lr0/m$a$f;->d:Lr0/m$a;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p3, Lp9/d;

    .line 8
    .line 9
    const-string v0, "value"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "continuation"

    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lr0/m$a$f;

    .line 20
    .line 21
    iget-object v1, p0, Lr0/m$a$f;->d:Lr0/m$a;

    .line 22
    .line 23
    invoke-direct {v0, v1, p3}, Lr0/m$a$f;-><init>(Lr0/m$a;Lp9/d;)V

    .line 24
    .line 25
    .line 26
    iput-boolean p1, v0, Lr0/m$a$f;->a:Z

    .line 27
    .line 28
    iput-object p2, v0, Lr0/m$a$f;->b:Ljava/lang/Object;

    .line 29
    .line 30
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lr0/m$a$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lq9/a;->a:Lq9/a;

    iget v1, p0, Lr0/m$a$f;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lr0/m$a$f;->a:Z

    iget-object v1, p0, Lr0/m$a$f;->b:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lr0/m$a$f;->d:Lr0/m$a;

    iget-object p1, p1, Lr0/m$a;->j:Lkotlinx/coroutines/flow/g;

    iput v2, p0, Lr0/m$a$f;->c:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
