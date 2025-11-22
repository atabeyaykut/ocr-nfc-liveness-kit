.class public final Lqb/k;
.super Lqb/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqb/g<",
        "Ll9/g<",
        "+",
        "Llb/b;",
        "+",
        "Llb/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Llb/b;

.field public final c:Llb/f;


# direct methods
.method public constructor <init>(Llb/b;Llb/f;)V
    .locals 1

    .line 1
    new-instance v0, Ll9/g;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lqb/g;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lqb/k;->b:Llb/b;

    .line 10
    .line 11
    iput-object p2, p0, Lqb/k;->c:Llb/f;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lma/b0;)Lcc/e0;
    .locals 3

    .line 1
    const-string v0, "module"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lqb/k;->b:Llb/b;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lma/t;->a(Lma/b0;Llb/b;)Lma/e;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-static {p1, v2}, Lob/i;->n(Lma/j;I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v1

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Lma/e;->q()Lcc/m0;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_1
    if-nez v1, :cond_2

    .line 31
    .line 32
    sget-object p1, Lec/h;->D:Lec/h;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0}, Llb/b;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "enumClassId.toString()"

    .line 42
    .line 43
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    aput-object v0, v1, v2

    .line 48
    .line 49
    iget-object v0, p0, Lqb/k;->c:Llb/f;

    .line 50
    .line 51
    iget-object v0, v0, Llb/f;->a:Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "enumEntryName.toString()"

    .line 54
    .line 55
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    aput-object v0, v1, v2

    .line 60
    .line 61
    invoke-static {p1, v1}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_2
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lqb/k;->b:Llb/b;

    invoke-virtual {v1}, Llb/b;->j()Llb/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqb/k;->c:Llb/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
