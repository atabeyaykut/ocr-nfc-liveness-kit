.class public final Lm/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm/d<",
        "Lrc/r;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lp/k;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrc/r;

    .line 2
    .line 3
    iget-object p1, p1, Lrc/r;->j:Ljava/lang/String;

    .line 4
    .line 5
    return-object p1
.end method
