.class public final Leb/h;
.super Leb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leb/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leb/a<",
        "Lna/c;",
        "Lqb/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final c:Lma/b0;

.field public final d:Lma/d0;

.field public final e:Lyb/f;


# direct methods
.method public constructor <init>(Lpa/g0;Lma/d0;Lbc/c;Lra/f;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Leb/a;-><init>(Lbc/c;Lra/f;)V

    iput-object p1, p0, Leb/h;->c:Lma/b0;

    iput-object p2, p0, Leb/h;->d:Lma/d0;

    new-instance p3, Lyb/f;

    invoke-direct {p3, p1, p2}, Lyb/f;-><init>(Lma/b0;Lma/d0;)V

    iput-object p3, p0, Leb/h;->e:Lyb/f;

    return-void
.end method

.method public static final u(Leb/h;Llb/f;Ljava/lang/Object;)Lqb/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lqb/i;->b(Ljava/lang/Object;)Lqb/g;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string p2, "Unsupported annotation argument: "

    .line 13
    .line 14
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "message"

    .line 25
    .line 26
    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lqb/l$a;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lqb/l$a;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object p0, p1

    .line 35
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final q(Llb/b;Lma/r0;Ljava/util/List;)Leb/i;
    .locals 8

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Leb/h;->c:Lma/b0;

    .line 7
    .line 8
    iget-object v1, p0, Leb/h;->d:Lma/d0;

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Lma/t;->c(Lma/b0;Llb/b;Lma/d0;)Lma/e;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    new-instance v0, Leb/i;

    .line 15
    .line 16
    move-object v2, v0

    .line 17
    move-object v3, p0

    .line 18
    move-object v5, p1

    .line 19
    move-object v6, p3

    .line 20
    move-object v7, p2

    .line 21
    invoke-direct/range {v2 .. v7}, Leb/i;-><init>(Leb/h;Lma/e;Llb/b;Ljava/util/List;Lma/r0;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
