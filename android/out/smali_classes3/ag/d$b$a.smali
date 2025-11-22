.class public final Lag/d$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lag/d$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailViewModel$fetchInstitutionDetail$1$job$1"
    f = "InstitutionDetailViewModel.kt"
    l = {
        0x1a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lag/d;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lag/d;IILjava/lang/Integer;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag/d;",
            "II",
            "Ljava/lang/Integer;",
            "Lp9/d<",
            "-",
            "Lag/d$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lag/d$b$a;->b:Lag/d;

    iput p2, p0, Lag/d$b$a;->c:I

    iput p3, p0, Lag/d$b$a;->d:I

    iput-object p4, p0, Lag/d$b$a;->e:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 6
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

    new-instance p1, Lag/d$b$a;

    iget-object v1, p0, Lag/d$b$a;->b:Lag/d;

    iget v2, p0, Lag/d$b$a;->c:I

    iget v3, p0, Lag/d$b$a;->d:I

    iget-object v4, p0, Lag/d$b$a;->e:Ljava/lang/Integer;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lag/d$b$a;-><init>(Lag/d;IILjava/lang/Integer;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Lag/d$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lag/d$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lag/d$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lag/d$b$a;->a:I

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
    iget-object p1, p0, Lag/d$b$a;->b:Lag/d;

    .line 26
    .line 27
    iget-object p1, p1, Lag/d;->h:Lag/i;

    .line 28
    .line 29
    new-instance v1, Lag/i$a;

    .line 30
    .line 31
    iget v3, p0, Lag/d$b$a;->d:I

    .line 32
    .line 33
    iget-object v4, p0, Lag/d$b$a;->e:Ljava/lang/Integer;

    .line 34
    .line 35
    iget v5, p0, Lag/d$b$a;->c:I

    .line 36
    .line 37
    invoke-direct {v1, v5, v3, v4}, Lag/i$a;-><init>(IILjava/lang/Integer;)V

    .line 38
    .line 39
    .line 40
    iput v2, p0, Lag/d$b$a;->a:I

    .line 41
    .line 42
    invoke-virtual {p1, v1, p0}, Lgf/f;->d(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 50
    .line 51
    return-object p1
.end method
