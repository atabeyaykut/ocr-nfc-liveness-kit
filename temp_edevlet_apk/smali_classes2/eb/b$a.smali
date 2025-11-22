.class public final Leb/b$a;
.super Leb/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Leb/b;


# direct methods
.method public constructor <init>(Leb/b;Leb/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leb/v;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Leb/b$a;->d:Leb/b;

    invoke-direct {p0, p1, p2}, Leb/b$b;-><init>(Leb/b;Leb/v;)V

    return-void
.end method


# virtual methods
.method public final c(ILlb/b;Lra/b;)Leb/i;
    .locals 3

    iget-object v0, p0, Leb/b$b;->a:Leb/v;

    invoke-static {v0, p1}, Leb/v$a;->e(Leb/v;I)Leb/v;

    move-result-object p1

    iget-object v0, p0, Leb/b$a;->d:Leb/b;

    iget-object v1, v0, Leb/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Leb/b;->b:Ljava/util/HashMap;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v0, Leb/b;->a:Leb/a;

    invoke-virtual {p1, p2, p3, v1}, Leb/d;->r(Llb/b;Lra/b;Ljava/util/List;)Leb/i;

    move-result-object p1

    return-object p1
.end method
