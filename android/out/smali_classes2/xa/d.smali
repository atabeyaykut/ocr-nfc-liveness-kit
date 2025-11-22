.class public final Lxa/d;
.super Lxa/f;
.source "SourceFile"


# instance fields
.field public final G:Lma/q0;

.field public final H:Lma/q0;

.field public final I:Lma/l0;


# direct methods
.method public constructor <init>(Lma/e;Lma/q0;Lma/q0;Lma/l0;)V
    .locals 14

    move-object v12, p0

    move-object/from16 v13, p3

    const-string v0, "ownerDescriptor"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lna/h$a;->a:Lna/h$a$a;

    invoke-interface/range {p2 .. p2}, Lma/z;->j()Lma/a0;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lma/z;->getVisibility()Lma/q;

    move-result-object v4

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface/range {p4 .. p4}, Lma/j;->getName()Llb/f;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lma/m;->getSource()Lma/r0;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lma/b$a;->a:Lma/b$a;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lxa/f;-><init>(Lma/j;Lna/h;Lma/a0;Lma/q;ZLlb/f;Lma/r0;Lma/l0;Lma/b$a;ZLl9/g;)V

    move-object/from16 v0, p2

    iput-object v0, v12, Lxa/d;->G:Lma/q0;

    iput-object v13, v12, Lxa/d;->H:Lma/q0;

    move-object/from16 v0, p4

    iput-object v0, v12, Lxa/d;->I:Lma/l0;

    return-void
.end method
