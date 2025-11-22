.class public final Lhh/g$d;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhh/g;->e(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationViewModel$saveLocation$1"
    f = "MobileAccidentInformationViewModel.kt"
    l = {
        0x70
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lhh/g;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhh/g;Ljava/lang/String;Ljava/lang/String;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhh/g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Lhh/g$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lhh/g$d;->c:Lhh/g;

    iput-object p2, p0, Lhh/g$d;->d:Ljava/lang/String;

    iput-object p3, p0, Lhh/g$d;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 4
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

    new-instance v0, Lhh/g$d;

    iget-object v1, p0, Lhh/g$d;->d:Ljava/lang/String;

    iget-object v2, p0, Lhh/g$d;->e:Ljava/lang/String;

    iget-object v3, p0, Lhh/g$d;->c:Lhh/g;

    invoke-direct {v0, v3, v1, v2, p2}, Lhh/g$d;-><init>(Lhh/g;Ljava/lang/String;Ljava/lang/String;Lp9/d;)V

    iput-object p1, v0, Lhh/g$d;->b:Ljava/lang/Object;

    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lhh/g$d;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lhh/g$d;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lhh/g$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lhh/g$d;->a:I

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
    iget-object p1, p0, Lhh/g$d;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lnc/a0;

    .line 28
    .line 29
    iget-object v1, p0, Lhh/g$d;->c:Lhh/g;

    .line 30
    .line 31
    iget-object v3, v1, Lhh/g;->i:Lhh/c;

    .line 32
    .line 33
    iget-object v3, v3, Lhh/c;->c:Lkotlinx/coroutines/scheduling/b;

    .line 34
    .line 35
    new-instance v4, Lhh/g$d$a;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    iget-object v6, p0, Lhh/g$d;->d:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v7, p0, Lhh/g$d;->e:Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {v4, v1, v6, v7, v5}, Lhh/g$d$a;-><init>(Lhh/g;Ljava/lang/String;Ljava/lang/String;Lp9/d;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-static {p1, v3, v4, v1}, Lc5/v;->n(Lnc/a0;Lkotlinx/coroutines/scheduling/b;Lx9/p;I)Lnc/f0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput v2, p0, Lhh/g$d;->a:I

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lnc/f0;->m0(Lp9/d;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v0, :cond_2

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 60
    .line 61
    return-object p1
.end method
