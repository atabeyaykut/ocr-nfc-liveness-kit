.class public final Lio/realm/internal/OsObject$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/internal/k$a<",
        "Lio/realm/internal/OsObject$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/internal/k$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/internal/OsObject$b;

    .line 2
    .line 3
    check-cast p2, Lio/realm/s0;

    .line 4
    .line 5
    iget-object p1, p1, Lio/realm/internal/k$b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lio/realm/w0;

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lio/realm/w0;->a(Lio/realm/s0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
