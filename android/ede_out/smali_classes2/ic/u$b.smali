.class public final Lic/u$b;
.super Lic/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Lic/u$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/u$b;

    invoke-direct {v0}, Lic/u$b;-><init>()V

    sput-object v0, Lic/u$b;->c:Lic/u$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lic/u$b$a;->a:Lic/u$b$a;

    const-string v1, "Int"

    invoke-direct {p0, v1, v0}, Lic/u;-><init>(Ljava/lang/String;Lx9/l;)V

    return-void
.end method
