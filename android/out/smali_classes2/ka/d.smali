.class public final Lka/d;
.super Lvb/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbc/l;Lka/b;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lvb/e;-><init>(Lbc/l;Lma/e;)V

    return-void
.end method


# virtual methods
.method public final h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lvb/e;->b:Lma/e;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.builtins.functions.FunctionClassDescriptor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lka/b;

    iget-object v1, v0, Lka/b;->g:Lka/c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget-object v0, Lm9/v;->a:Lm9/v;

    goto :goto_1

    :cond_0
    invoke-static {v0, v2}, Lka/e$a;->a(Lka/b;Z)Lka/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lka/e$a;->a(Lka/b;Z)Lka/e;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0
.end method
