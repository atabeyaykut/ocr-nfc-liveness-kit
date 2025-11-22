.class public final Lva/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lva/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lva/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Llb/c;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lbc/c$j;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Llb/c;",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/a0;->b:Ljava/util/Map;

    new-instance p1, Lbc/c;

    const-string v0, "Java nullability annotation states"

    invoke-direct {p1, v0}, Lbc/c;-><init>(Ljava/lang/String;)V

    new-instance v0, Lva/a0$a;

    invoke-direct {v0, p0}, Lva/a0$a;-><init>(Lva/a0;)V

    invoke-virtual {p1, v0}, Lbc/c;->e(Lx9/l;)Lbc/c$j;

    move-result-object p1

    iput-object p1, p0, Lva/a0;->c:Lbc/c$j;

    return-void
.end method
