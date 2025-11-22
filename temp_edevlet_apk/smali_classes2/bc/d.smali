.class public final Lbc/d;
.super Lbc/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbc/c$h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbc/c;Lx9/a;)V
    .locals 1

    sget-object v0, Lm9/v;->a:Lm9/v;

    iput-object v0, p0, Lbc/d;->d:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lbc/c$h;-><init>(Lbc/c;Lx9/a;)V

    return-void
.end method


# virtual methods
.method public final c(Z)Lbc/c$m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbc/c$m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p1, Lbc/c$m;

    const/4 v0, 0x0

    iget-object v1, p0, Lbc/d;->d:Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lbc/c$m;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method
