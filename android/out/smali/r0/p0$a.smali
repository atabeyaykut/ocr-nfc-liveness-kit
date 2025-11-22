.class public final Lr0/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/p0;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/g;

.field public final synthetic b:Lr0/p0;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/g;Lr0/p0;)V
    .locals 0

    iput-object p1, p0, Lr0/p0$a;->a:Lkotlinx/coroutines/flow/g;

    iput-object p2, p0, Lr0/p0$a;->b:Lr0/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lr0/p0$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lr0/p0$a$a;

    iget v1, v0, Lr0/p0$a$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr0/p0$a$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr0/p0$a$a;

    invoke-direct {v0, p0, p2}, Lr0/p0$a$a;-><init>(Lr0/p0$a;Lp9/d;)V

    :goto_0
    iget-object p2, v0, Lr0/p0$a$a;->a:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Lr0/p0$a$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    check-cast p1, Lr0/p;

    new-instance p2, Lr0/v;

    iget-object v2, p0, Lr0/p0$a;->b:Lr0/p0;

    iget-object v4, v2, Lr0/p0;->b:Lda/l;

    invoke-interface {v4, p1}, Lda/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v2, Lr0/p0;->c:Lda/l;

    invoke-interface {v5, p1}, Lda/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v2, v2, Lr0/p0;->d:Lda/l;

    invoke-interface {v2, p1}, Lda/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, v4, v5, p1}, Lr0/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput v3, v0, Lr0/p0$a$a;->b:I

    iget-object p1, p0, Lr0/p0$a;->a:Lkotlinx/coroutines/flow/g;

    invoke-interface {p1, p2, v0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
