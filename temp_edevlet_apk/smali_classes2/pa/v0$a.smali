.class public final Lpa/v0$a;
.super Lpa/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final m:Ll9/j;


# direct methods
.method public constructor <init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;Lx9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/a;",
            "Lma/a1;",
            "I",
            "Lna/h;",
            "Llb/f;",
            "Lcc/e0;",
            "ZZZ",
            "Lcc/e0;",
            "Lma/r0;",
            "Lx9/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lma/b1;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p11}, Lpa/v0;-><init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;)V

    invoke-static {p12}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object p1

    iput-object p1, p0, Lpa/v0$a;->m:Ll9/j;

    return-void
.end method


# virtual methods
.method public final q0(Lka/e;Llb/f;I)Lma/a1;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    new-instance v14, Lpa/v0$a;

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0}, Lna/b;->getAnnotations()Lna/h;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    const-string v1, "annotations"

    .line 10
    .line 11
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lpa/w0;->getType()Lcc/e0;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    const-string v1, "type"

    .line 19
    .line 20
    invoke-static {v7, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lpa/v0;->t0()Z

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    iget-boolean v9, v0, Lpa/v0;->h:Z

    .line 28
    .line 29
    iget-boolean v10, v0, Lpa/v0;->j:Z

    .line 30
    .line 31
    iget-object v11, v0, Lpa/v0;->k:Lcc/e0;

    .line 32
    .line 33
    sget-object v12, Lma/r0;->a:Lma/r0$a;

    .line 34
    .line 35
    new-instance v13, Lpa/u0;

    .line 36
    .line 37
    invoke-direct {v13, p0}, Lpa/u0;-><init>(Lpa/v0$a;)V

    .line 38
    .line 39
    .line 40
    move-object v1, v14

    .line 41
    move-object/from16 v2, p1

    .line 42
    .line 43
    move/from16 v4, p3

    .line 44
    .line 45
    move-object/from16 v6, p2

    .line 46
    .line 47
    invoke-direct/range {v1 .. v13}, Lpa/v0$a;-><init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;Lx9/a;)V

    .line 48
    .line 49
    .line 50
    return-object v14
.end method
