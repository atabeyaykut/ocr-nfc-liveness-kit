.class public final Lyd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyd/a$b;,
        Lyd/a$a;
    }
.end annotation


# static fields
.field public static final a:Lyd/a$a;

.field public static volatile b:[Lyd/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyd/a$a;

    invoke-direct {v0}, Lyd/a$a;-><init>()V

    sput-object v0, Lyd/a;->a:Lyd/a$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lyd/a$b;

    sput-object v0, Lyd/a;->b:[Lyd/a$b;

    return-void
.end method
