.class public final Lsa/c0;
.super Lsa/e0;
.source "SourceFile"

# interfaces
.implements Lcb/u;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lm9/v;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lsa/e0;-><init>()V

    iput-object p1, p0, Lsa/c0;->a:Ljava/lang/Class;

    sget-object p1, Lm9/v;->a:Lm9/v;

    iput-object p1, p0, Lsa/c0;->b:Lm9/v;

    return-void
.end method


# virtual methods
.method public final O()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lsa/c0;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final getAnnotations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcb/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsa/c0;->b:Lm9/v;

    return-object v0
.end method

.method public final getType()Lja/l;
    .locals 2

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lsa/c0;->a:Ljava/lang/Class;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltb/c;->o(Ljava/lang/String;)Ltb/c;

    move-result-object v0

    invoke-virtual {v0}, Ltb/c;->r()Lja/l;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final o()V
    .locals 0

    return-void
.end method
