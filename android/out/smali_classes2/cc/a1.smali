.class public final Lcc/a1;
.super Lic/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/a1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lic/e<",
        "Lcc/y0<",
        "*>;",
        "Lcc/y0<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final b:Lcc/a1$a;

.field public static final c:Lcc/a1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcc/a1$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcc/a1$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcc/a1;->b:Lcc/a1$a;

    .line 7
    .line 8
    new-instance v0, Lcc/a1;

    .line 9
    .line 10
    sget-object v1, Lm9/v;->a:Lm9/v;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcc/a1;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcc/a1;->c:Lcc/a1;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcc/y0<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lic/e;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/y0;

    invoke-virtual {v0}, Lcc/y0;->b()Lda/d;

    move-result-object v1

    const-string v2, "tClass"

    .line 1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcc/a1;->b:Lcc/a1$a;

    .line 3
    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->b(Lda/d;)I

    move-result v1

    iget-object v2, p0, Lic/e;->a:Lic/c;

    invoke-virtual {v2}, Lic/c;->l()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lic/e;->a:Lic/c;

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lic/r;

    iget v3, v2, Lic/r;->b:I

    if-ne v3, v1, :cond_1

    new-instance v2, Lic/r;

    invoke-direct {v2, v1, v0}, Lic/r;-><init>(ILcc/y0;)V

    goto :goto_2

    :cond_1
    new-instance v3, Lic/d;

    invoke-direct {v3}, Lic/d;-><init>()V

    iput-object v3, p0, Lic/e;->a:Lic/c;

    iget v4, v2, Lic/r;->b:I

    iget-object v2, v2, Lic/r;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lic/d;->m(ILjava/lang/Object;)V

    :goto_1
    iget-object v2, p0, Lic/e;->a:Lic/c;

    invoke-virtual {v2, v1, v0}, Lic/c;->m(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lic/r;

    invoke-direct {v2, v1, v0}, Lic/r;-><init>(ILcc/y0;)V

    :goto_2
    iput-object v2, p0, Lic/e;->a:Lic/c;

    goto :goto_0

    :cond_3
    return-void
.end method
