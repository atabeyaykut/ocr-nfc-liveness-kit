.class public final Lra/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leb/k;

.field public final b:Lra/f;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Llb/b;",
            "Lvb/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leb/k;Lra/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/a;->a:Leb/k;

    iput-object p2, p0, Lra/a;->b:Lra/f;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lra/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method
