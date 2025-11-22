.class public final synthetic Lc6/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:Lx6/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Lx6/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6/q;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lc6/q;->b:Lx6/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc6/q;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx6/b;

    iget-object v1, p0, Lc6/q;->b:Lx6/a;

    invoke-interface {v0, v1}, Lx6/b;->a(Lx6/a;)V

    return-void
.end method
