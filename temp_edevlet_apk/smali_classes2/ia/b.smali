.class public final Lia/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashSet;

.field public static final b:Llb/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Llb/c;

    const/4 v1, 0x0

    sget-object v2, Lva/x;->a:Llb/c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lva/x;->h:Llb/c;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lva/x;->i:Llb/c;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lva/x;->c:Llb/c;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lva/x;->d:Llb/c;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lva/x;->f:Llb/c;

    aput-object v2, v0, v1

    invoke-static {v0}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llb/c;

    invoke-static {v2}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sput-object v1, Lia/b;->a:Ljava/util/LinkedHashSet;

    sget-object v0, Lva/x;->g:Llb/c;

    invoke-static {v0}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v0

    sput-object v0, Lia/b;->b:Llb/b;

    return-void
.end method
