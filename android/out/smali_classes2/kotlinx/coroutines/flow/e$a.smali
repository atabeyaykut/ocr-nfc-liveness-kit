.class public final Lkotlinx/coroutines/flow/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/e;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/g;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lkotlin/jvm/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/v<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e;Lkotlin/jvm/internal/v;Lkotlinx/coroutines/flow/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;",
            "Lkotlin/jvm/internal/v<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/e$a;->a:Lkotlinx/coroutines/flow/e;

    iput-object p2, p0, Lkotlinx/coroutines/flow/e$a;->b:Lkotlin/jvm/internal/v;

    iput-object p3, p0, Lkotlinx/coroutines/flow/e$a;->c:Lkotlinx/coroutines/flow/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/e$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/e$a$a;

    iget v1, v0, Lkotlinx/coroutines/flow/e$a$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/e$a$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/e$a$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/e$a$a;-><init>(Lkotlinx/coroutines/flow/e$a;Lp9/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/e$a$a;->a:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Lkotlinx/coroutines/flow/e$a$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/coroutines/flow/e$a;->a:Lkotlinx/coroutines/flow/e;

    iget-object v2, p2, Lkotlinx/coroutines/flow/e;->b:Lx9/l;

    invoke-interface {v2, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lkotlinx/coroutines/flow/e$a;->b:Lkotlin/jvm/internal/v;

    iget-object v5, v4, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    sget-object v6, La2/b;->k:Lkotlinx/coroutines/internal/u;

    if-eq v5, v6, :cond_4

    iget-object p2, p2, Lkotlinx/coroutines/flow/e;->c:Lx9/p;

    invoke-interface {p2, v5, v2}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1

    :cond_4
    :goto_1
    iput-object v2, v4, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/e$a$a;->c:I

    iget-object p2, p0, Lkotlinx/coroutines/flow/e$a;->c:Lkotlinx/coroutines/flow/g;

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
