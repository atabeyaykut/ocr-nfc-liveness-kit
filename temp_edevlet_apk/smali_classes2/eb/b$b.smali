.class public Leb/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/s$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Leb/v;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Leb/b;


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

    iput-object p1, p0, Leb/b$b;->c:Leb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Leb/b$b;->a:Leb/v;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leb/b$b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Leb/b$b;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leb/b$b;->c:Leb/b;

    iget-object v1, v1, Leb/b;->b:Ljava/util/HashMap;

    iget-object v2, p0, Leb/b$b;->a:Leb/v;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b(Llb/b;Lra/b;)Leb/s$a;
    .locals 2

    iget-object v0, p0, Leb/b$b;->c:Leb/b;

    iget-object v0, v0, Leb/b;->a:Leb/a;

    iget-object v1, p0, Leb/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2, v1}, Leb/d;->r(Llb/b;Lra/b;Ljava/util/List;)Leb/i;

    move-result-object p1

    return-object p1
.end method
