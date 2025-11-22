.class public final Lqb/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/c1;


# instance fields
.field public final a:J

.field public final b:Lma/b0;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcc/m0;

.field public final e:Ll9/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(JLma/b0;Ljava/util/Set;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcc/a1;->b:Lcc/a1$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcc/a1;->c:Lcc/a1;

    .line 3
    invoke-static {v0, p0}, Lcc/f0;->d(Lcc/a1;Lqb/o;)Lcc/m0;

    move-result-object v0

    iput-object v0, p0, Lqb/o;->d:Lcc/m0;

    new-instance v0, Lqb/o$a;

    invoke-direct {v0, p0}, Lqb/o$a;-><init>(Lqb/o;)V

    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object v0

    iput-object v0, p0, Lqb/o;->e:Ll9/j;

    iput-wide p1, p0, Lqb/o;->a:J

    iput-object p3, p0, Lqb/o;->b:Lma/b0;

    iput-object p4, p0, Lqb/o;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public final l()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqb/o;->e:Ll9/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    return-object v0
.end method

.method public final m()Lja/k;
    .locals 1

    iget-object v0, p0, Lqb/o;->b:Lma/b0;

    invoke-interface {v0}, Lma/b0;->m()Lja/k;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lma/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "IntegerLiteralType"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "["

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lqb/o;->c:Ljava/util/Set;

    .line 16
    .line 17
    const-string v4, ","

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    sget-object v7, Lqb/p;->a:Lqb/p;

    .line 22
    .line 23
    const/16 v8, 0x1e

    .line 24
    .line 25
    invoke-static/range {v3 .. v8}, Lm9/t;->g1(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x5d

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
