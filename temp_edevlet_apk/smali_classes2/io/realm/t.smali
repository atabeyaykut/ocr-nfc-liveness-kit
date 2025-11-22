.class public final Lio/realm/t;
.super Lio/realm/x0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/realm/a;Lio/realm/internal/Table;)V
    .locals 1

    new-instance v0, Lio/realm/x0$a;

    invoke-direct {v0, p2}, Lio/realm/x0$a;-><init>(Lio/realm/internal/Table;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/x0;-><init>(Lio/realm/a;Lio/realm/internal/Table;Lio/realm/internal/c;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/a;Lio/realm/internal/Table;Lio/realm/internal/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/realm/x0;-><init>(Lio/realm/a;Lio/realm/internal/Table;Lio/realm/internal/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/x0;->c:Lio/realm/internal/c;

    invoke-virtual {v0, p1}, Lio/realm/internal/c;->d(Ljava/lang/String;)Lio/realm/internal/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lio/realm/internal/c$a;->c:Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Property \'%s\' not found."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
