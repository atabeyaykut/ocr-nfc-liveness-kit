.class public final Lh6/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh6/t;


# direct methods
.method public constructor <init>(Lh6/t;)V
    .locals 0

    iput-object p1, p0, Lh6/s;->a:Lh6/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lh6/s;->a:Lh6/t;

    invoke-static {v0}, Lh6/t;->a(Lh6/t;)V

    const/4 v0, 0x0

    return-object v0
.end method
