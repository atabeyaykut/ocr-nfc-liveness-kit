.class public final Ld0/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ld0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ld0/r<",
        "Ld0/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ld0/f;


# direct methods
.method public constructor <init>(Ld0/f;)V
    .locals 0

    iput-object p1, p0, Ld0/g$c;->a:Ld0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ld0/r;

    iget-object v1, p0, Ld0/g$c;->a:Ld0/f;

    invoke-direct {v0, v1}, Ld0/r;-><init>(Ld0/f;)V

    return-object v0
.end method
