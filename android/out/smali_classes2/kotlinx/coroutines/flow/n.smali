.class public final Lkotlinx/coroutines/flow/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/f;

.field public final synthetic b:Lx9/q;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;Lr0/d0;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/n;->a:Lkotlinx/coroutines/flow/f;

    iput-object p2, p0, Lkotlinx/coroutines/flow/n;->b:Lx9/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "Ljava/lang/Object;",
            ">;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/n$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/n$a;

    iget v1, v0, Lkotlinx/coroutines/flow/n$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/n$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/n$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/n$a;-><init>(Lkotlinx/coroutines/flow/n;Lp9/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/n$a;->a:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Lkotlinx/coroutines/flow/n$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/flow/n$a;->e:Lkotlinx/coroutines/flow/g;

    iget-object v2, v0, Lkotlinx/coroutines/flow/n$a;->d:Lkotlinx/coroutines/flow/n;

    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    iput-object p0, v0, Lkotlinx/coroutines/flow/n$a;->d:Lkotlinx/coroutines/flow/n;

    iput-object p1, v0, Lkotlinx/coroutines/flow/n$a;->e:Lkotlinx/coroutines/flow/g;

    iput v4, v0, Lkotlinx/coroutines/flow/n$a;->b:I

    iget-object p2, p0, Lkotlinx/coroutines/flow/n;->a:Lkotlinx/coroutines/flow/f;

    invoke-static {p2, p1, v0}, Lb8/f;->n(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/io/Serializable;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_5

    iget-object v2, v2, Lkotlinx/coroutines/flow/n;->b:Lx9/q;

    const/4 v4, 0x0

    iput-object v4, v0, Lkotlinx/coroutines/flow/n$a;->d:Lkotlinx/coroutines/flow/n;

    iput-object v4, v0, Lkotlinx/coroutines/flow/n$a;->e:Lkotlinx/coroutines/flow/g;

    iput v3, v0, Lkotlinx/coroutines/flow/n$a;->b:I

    invoke-interface {v2, p1, p2, v0}, Lx9/q;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
