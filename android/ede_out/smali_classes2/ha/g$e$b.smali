.class public final Lha/g$e$b;
.super Lha/g$e;
.source "SourceFile"

# interfaces
.implements Lha/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lha/g$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lha/g$e;-><init>(Ljava/lang/reflect/Field;Z)V

    return-void
.end method
