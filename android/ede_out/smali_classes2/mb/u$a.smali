.class public final Lmb/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lmb/u$a$a;

.field public static final b:Lmb/u$a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmb/u$a$a;

    invoke-direct {v0}, Lmb/u$a$a;-><init>()V

    sput-object v0, Lmb/u$a;->a:Lmb/u$a$a;

    new-instance v0, Lmb/u$a$b;

    invoke-direct {v0}, Lmb/u$a$b;-><init>()V

    sput-object v0, Lmb/u$a;->b:Lmb/u$a$b;

    return-void
.end method
