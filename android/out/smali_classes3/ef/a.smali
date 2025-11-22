.class public final Lef/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll8/p$a;


# instance fields
.field public final synthetic a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lef/a;->a:Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lef/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/util/Set;Ll8/b0;)Ll8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ll8/b0;",
            ")",
            "Ll8/p<",
            "*>;"
        }
    .end annotation

    const-string v0, "requestedType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lef/a;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p3, p0, v0, p2}, Ll8/b0;->c(Ll8/p$a;Ljava/lang/reflect/Type;Ljava/util/Set;)Ll8/p;

    move-result-object p1

    new-instance p2, Lef/b;

    iget-object p3, p0, Lef/a;->b:Ljava/lang/Object;

    invoke-direct {p2, p1, p3}, Lef/b;-><init>(Ll8/p;Ljava/lang/Object;)V

    return-object p2
.end method
