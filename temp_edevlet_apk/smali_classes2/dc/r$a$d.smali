.class public final Ldc/r$a$d;
.super Ldc/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/r$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "UNKNOWN"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ldc/r$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final n(Lcc/s1;)Ldc/r$a;
    .locals 1

    const-string v0, "nextType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ldc/r$a;->o(Lcc/s1;)Ldc/r$a;

    move-result-object p1

    sget-object v0, Ldc/r$a;->b:Ldc/r$a$a;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method
