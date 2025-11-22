.class public final Lr1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/a$c;,
        Lr1/a$d;,
        Lr1/a$e;,
        Lr1/a$b;
    }
.end annotation


# static fields
.field public static final a:Lr1/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/a$a;

    invoke-direct {v0}, Lr1/a$a;-><init>()V

    sput-object v0, Lr1/a;->a:Lr1/a$a;

    return-void
.end method

.method public static a(ILr1/a$b;)Lr1/a$c;
    .locals 2
    .param p1    # Lr1/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lr1/a;->a:Lr1/a$a;

    .line 7
    .line 8
    new-instance v1, Lr1/a$c;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1, p0}, Lr1/a$c;-><init>(Landroidx/core/util/Pools$SynchronizedPool;Lr1/a$b;Lr1/a$e;)V

    .line 11
    .line 12
    .line 13
    return-object v1
.end method
