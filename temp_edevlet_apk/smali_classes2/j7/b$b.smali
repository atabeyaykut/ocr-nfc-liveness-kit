.class public final enum Lj7/b$b;
.super Lj7/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "UPPER_CAMEL_CASE"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lj7/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj7/b;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
