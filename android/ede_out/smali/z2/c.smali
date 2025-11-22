.class public final Lz2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/e;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:La3/p;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lv2/e;

.field public final d:Lb3/d;

.field public final e:Lc3/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lu2/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lz2/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lv2/e;La3/p;Lb3/d;Lc3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/c;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lz2/c;->c:Lv2/e;

    iput-object p3, p0, Lz2/c;->a:La3/p;

    iput-object p4, p0, Lz2/c;->d:Lb3/d;

    iput-object p5, p0, Lz2/c;->e:Lc3/b;

    return-void
.end method


# virtual methods
.method public final a(Lr2/h;Lu2/h;Lu2/j;)V
    .locals 1

    new-instance v0, Lz2/a;

    invoke-direct {v0, p0, p3, p1, p2}, Lz2/a;-><init>(Lz2/c;Lu2/j;Lr2/h;Lu2/h;)V

    iget-object p1, p0, Lz2/c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
