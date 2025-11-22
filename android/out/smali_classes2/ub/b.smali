.class public final Lub/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lub/a;


# instance fields
.field public final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbc/l;)V
    .locals 2

    sget-object v0, Lm9/v;->a:Lm9/v;

    const-string v1, "storageManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lub/b;->a:Ljava/lang/Iterable;

    invoke-interface {p1}, Lbc/l;->b()Lbc/c$c;

    return-void
.end method
