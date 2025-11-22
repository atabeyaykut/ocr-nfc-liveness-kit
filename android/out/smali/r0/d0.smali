.class public final Lr0/d0;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/q<",
        "Lkotlinx/coroutines/flow/g<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Throwable;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "com.airbnb.mvrx.MavericksViewModel$execute$9"
    f = "MavericksViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Throwable;

.field public final synthetic b:Lr0/z;

.field public final synthetic c:Lx9/p;

.field public final synthetic d:Lda/l;


# direct methods
.method public constructor <init>(Lr0/z;Lx9/p;Lda/l;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lr0/d0;->b:Lr0/z;

    iput-object p2, p0, Lr0/d0;->c:Lx9/p;

    iput-object p3, p0, Lr0/d0;->d:Lda/l;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/g;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Throwable;

    .line 4
    .line 5
    check-cast p3, Lp9/d;

    .line 6
    .line 7
    const-string v0, "$this$create"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "error"

    .line 13
    .line 14
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "continuation"

    .line 18
    .line 19
    invoke-static {p3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lr0/d0;

    .line 23
    .line 24
    iget-object v0, p0, Lr0/d0;->b:Lr0/z;

    .line 25
    .line 26
    iget-object v1, p0, Lr0/d0;->c:Lx9/p;

    .line 27
    .line 28
    iget-object v2, p0, Lr0/d0;->d:Lda/l;

    .line 29
    .line 30
    invoke-direct {p1, v0, v1, v2, p3}, Lr0/d0;-><init>(Lr0/z;Lx9/p;Lda/l;Lp9/d;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p1, Lr0/d0;->a:Ljava/lang/Throwable;

    .line 34
    .line 35
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lr0/d0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    iget-object p1, p0, Lr0/d0;->a:Ljava/lang/Throwable;

    new-instance v0, Lr0/d0$a;

    invoke-direct {v0, p0, p1}, Lr0/d0$a;-><init>(Lr0/d0;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lr0/d0;->b:Lr0/z;

    invoke-virtual {p1, v0}, Lr0/z;->c(Lx9/l;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
