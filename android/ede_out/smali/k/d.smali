.class public final Lk/d;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Lk/a$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "coil.intercept.EngineInterceptor$execute$executeResult$1"
    f = "EngineInterceptor.kt"
    l = {
        0x7f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lk/a;

.field public final synthetic c:Lkotlin/jvm/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/v<",
            "Lj/g;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lkotlin/jvm/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/v<",
            "Le/a;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:Lp/g;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lkotlin/jvm/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/v<",
            "Lp/k;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Le/b;


# direct methods
.method public constructor <init>(Lk/a;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lp/g;Ljava/lang/Object;Lkotlin/jvm/internal/v;Le/b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a;",
            "Lkotlin/jvm/internal/v<",
            "Lj/g;",
            ">;",
            "Lkotlin/jvm/internal/v<",
            "Le/a;",
            ">;",
            "Lp/g;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/internal/v<",
            "Lp/k;",
            ">;",
            "Le/b;",
            "Lp9/d<",
            "-",
            "Lk/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk/d;->b:Lk/a;

    iput-object p2, p0, Lk/d;->c:Lkotlin/jvm/internal/v;

    iput-object p3, p0, Lk/d;->d:Lkotlin/jvm/internal/v;

    iput-object p4, p0, Lk/d;->e:Lp/g;

    iput-object p5, p0, Lk/d;->f:Ljava/lang/Object;

    iput-object p6, p0, Lk/d;->g:Lkotlin/jvm/internal/v;

    iput-object p7, p0, Lk/d;->h:Le/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance p1, Lk/d;

    iget-object v1, p0, Lk/d;->b:Lk/a;

    iget-object v2, p0, Lk/d;->c:Lkotlin/jvm/internal/v;

    iget-object v3, p0, Lk/d;->d:Lkotlin/jvm/internal/v;

    iget-object v4, p0, Lk/d;->e:Lp/g;

    iget-object v5, p0, Lk/d;->f:Ljava/lang/Object;

    iget-object v6, p0, Lk/d;->g:Lkotlin/jvm/internal/v;

    iget-object v7, p0, Lk/d;->h:Le/b;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lk/d;-><init>(Lk/a;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lp/g;Ljava/lang/Object;Lkotlin/jvm/internal/v;Le/b;Lp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lk/d;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lk/d;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lk/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lq9/a;->a:Lq9/a;

    iget v1, p0, Lk/d;->a:I

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

    iget-object v1, p0, Lk/d;->b:Lk/a;

    iget-object p1, p0, Lk/d;->c:Lkotlin/jvm/internal/v;

    iget-object p1, p1, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    check-cast p1, Lj/l;

    iget-object v3, p0, Lk/d;->d:Lkotlin/jvm/internal/v;

    iget-object v3, v3, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    check-cast v3, Le/a;

    iget-object v4, p0, Lk/d;->e:Lp/g;

    iget-object v5, p0, Lk/d;->f:Ljava/lang/Object;

    iget-object v6, p0, Lk/d;->g:Lkotlin/jvm/internal/v;

    iget-object v6, v6, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    check-cast v6, Lp/k;

    iget-object v7, p0, Lk/d;->h:Le/b;

    iput v2, p0, Lk/d;->a:I

    move-object v2, p1

    move-object v8, p0

    invoke-static/range {v1 .. v8}, Lk/a;->b(Lk/a;Lj/l;Le/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
