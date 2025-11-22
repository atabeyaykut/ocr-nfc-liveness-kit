.class public final Lla/a;
.super Lvb/e;
.source "SourceFile"


# static fields
.field public static final e:Llb/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "clone"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    sput-object v0, Lla/a;->e:Llb/f;

    return-void
.end method

.method public constructor <init>(Lbc/l;Lpa/n;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lvb/e;-><init>(Lbc/l;Lma/e;)V

    return-void
.end method


# virtual methods
.method public final h()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/u;",
            ">;"
        }
    .end annotation

    sget-object v0, Lma/b$a;->a:Lma/b$a;

    sget-object v1, Lma/r0;->a:Lma/r0$a;

    sget-object v2, Lla/a;->e:Llb/f;

    iget-object v3, p0, Lvb/e;->b:Lma/e;

    invoke-static {v3, v2, v0, v1}, Lpa/p0;->U0(Lma/j;Llb/f;Lma/b$a;Lma/r0;)Lpa/p0;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v3}, Lma/e;->J0()Lma/o0;

    move-result-object v6

    sget-object v9, Lm9/v;->a:Lm9/v;

    invoke-static {v3}, Lsb/b;->e(Lma/j;)Lja/k;

    move-result-object v1

    invoke-virtual {v1}, Lja/k;->f()Lcc/m0;

    move-result-object v10

    sget-object v11, Lma/a0;->c:Lma/a0;

    sget-object v12, Lma/p;->c:Lma/p$f;

    move-object v4, v0

    move-object v7, v9

    move-object v8, v9

    invoke-virtual/range {v4 .. v12}, Lpa/p0;->W0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;)Lpa/p0;

    invoke-static {v0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
