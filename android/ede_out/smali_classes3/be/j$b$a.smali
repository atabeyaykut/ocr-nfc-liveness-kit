.class public final Lbe/j$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/j$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.ManualDynamicFieldViewModel$fetchValidationFields$1$job$1"
    f = "ManualDynamicFieldViewModel.kt"
    l = {
        0x17
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lbe/j;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbe/j;Ljava/lang/String;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbe/j;",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Lbe/j$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbe/j$b$a;->b:Lbe/j;

    iput-object p2, p0, Lbe/j$b$a;->c:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
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

    new-instance p1, Lbe/j$b$a;

    iget-object v0, p0, Lbe/j$b$a;->b:Lbe/j;

    iget-object v1, p0, Lbe/j$b$a;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lbe/j$b$a;-><init>(Lbe/j;Ljava/lang/String;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Lbe/j$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lbe/j$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lbe/j$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lbe/j$b$a;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lbe/j$b$a;->b:Lbe/j;

    .line 26
    .line 27
    iget-object p1, p1, Lbe/j;->h:Lbe/n;

    .line 28
    .line 29
    new-instance v1, Lbe/n$a;

    .line 30
    .line 31
    iget-object v3, p0, Lbe/j$b$a;->c:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-direct {v1, v3, v4}, Lbe/n$a;-><init>(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    iput v2, p0, Lbe/j$b$a;->a:I

    .line 38
    .line 39
    invoke-virtual {p1, v1, p0}, Lgf/f;->d(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 47
    .line 48
    return-object p1
.end method
